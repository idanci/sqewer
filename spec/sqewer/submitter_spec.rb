require_relative '../spec_helper'

describe Sqewer::Submitter do
  describe '.default' do
    it 'returns a set up Submitter with the configured Connection and Serializer' do
      
      # expect(ENV).to receive(:fetch).with('SQS_QUEUE_URL').and_return('https://some-queue.aws.com')
      s = described_class.default
      expect(s.connection_pool).to respond_to(:with)
      expect(s.serializer).to respond_to(:serialize)
    end
  end
  
  describe '#initialize' do
    it 'creates a Submitter that you can submit jobs through' do
      fake_serializer = double('Some serializer')
      allow(fake_serializer).to receive(:serialize) {|object_to_serialize|
        expect(object_to_serialize).not_to be_nil
        'serialized-object-data'
      }
      
      fake_connection = double('Some SQS connection')
      expect(fake_connection).to receive(:send_message).at_least(5).times.with('serialized-object-data', any_args)
      fake_connection_pool = double('Fake pool')
      allow(fake_connection_pool).to receive(:with).and_yield(fake_connection)

      fake_job = double('Some job', run: true)
      
      subject = described_class.new(fake_connection_pool, fake_serializer)
      5.times { subject.submit!(fake_job) }
    end
    
    it 'passes the keyword arguments to send_message on the connection' do
      fake_serializer = double('Some serializer')
      allow(fake_serializer).to receive(:serialize) {|object_to_serialize|
        expect(object_to_serialize).not_to be_nil
        'serialized-object-data'
      }
      
      fake_connection = double('Some SQS connection')
      expect(fake_connection).to receive(:send_message).with('serialized-object-data', {delay_seconds: 5})
      fake_connection_pool = double('Fake pool')
      allow(fake_connection_pool).to receive(:with).and_yield(fake_connection)

      fake_job = double('Some job', run: true)
      
      subject = described_class.new(fake_connection_pool, fake_serializer)
      subject.submit!(fake_job, delay_seconds: 5)
    end
    
    it 'handles the massively delayed execution by clamping the delay_seconds to the SQS maximum, and saving the _execute_after' do
      fake_serializer = double('Some serializer')
      allow(fake_serializer).to receive(:serialize) {|object_to_serialize, timestamp_seconds|
        
        delay_by = Time.now.to_i + 4585659855
        expect(timestamp_seconds).to be_within(20).of(delay_by)
        
        expect(object_to_serialize).not_to be_nil
        'serialized-object-data'
      }
      
      fake_connection = double('Some SQS connection')
      expect(fake_connection).to receive(:send_message).with('serialized-object-data', {delay_seconds: 899})
      fake_connection_pool = double('Fake pool')
      allow(fake_connection_pool).to receive(:with).and_yield(fake_connection)

      fake_job = double('Some job', run: true)
      
      subject = described_class.new(fake_connection_pool, fake_serializer)
      subject.submit!(fake_job, delay_seconds: 4585659855)
    end

    it "raises an error if the job does not respond to call" do
      fake_serializer = double('Some serializer')
      fake_connection = double('Some SQS connection')
      fake_connection_pool = double('Fake pool')
      allow(fake_connection_pool).to receive(:with).and_yield(fake_connection)
      fake_job = double('Some job')
      
      subject = described_class.new(fake_connection_pool, fake_serializer)
      expect {
        subject.submit!(fake_job, delay_seconds: 5)
      }.to raise_error(Sqewer::Submitter::NotSqewerJob)
    end
  end
end
