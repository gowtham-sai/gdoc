RSpec.describe Gdoc do
  it "has a version number" do
    expect(Gdoc::VERSION).not_to be nil
  end

  context "depreciation" do
    let(:test_class) {
      class TestClass; include Gdoc; end;
      TestClass.new
    }

    it "should be false by default" do
      expect(test_class.depreciation).to be(false)
    end

    it "should be able set to true" do
      test_class.depreciation = true
      expect(test_class.depreciation).to be(true)
    end

    it "should be able set to fales" do
      test_class.depreciation = false
      expect(test_class.depreciation).to be(false)
    end
  end

  context "required_params" do
    let(:test_class) {
      class TestClass
        include Gdoc
        def set_required_params=(params)
          @required_params = params
        end
      end
      TestClass.new
    }

    it "should be empty hash by default" do
      expect(test_class.required_params).to eq({})
    end

    it "should be able set using instance variable" do
      params = {required_param_one: 'hello world'}
      test_class.set_required_params = params
      expect(test_class.required_params).to be(params)
    end
  end

  context "other_params" do
    let(:test_class) {
      class TestClass
        include Gdoc
      end
      TestClass.new
    }

    it "should be empty hash by default" do
      expect(test_class.other_params).to eq({})
    end
  end
end
