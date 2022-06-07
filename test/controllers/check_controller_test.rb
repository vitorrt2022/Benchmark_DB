require "test_helper"

class CheckControllerTest < ActionDispatch::IntegrationTest
   def setup
      Terrorist.delete_all
      TerroristMatch.delete_all
      Merchant.delete_all
      Rails.application.load_seed
   end
     
      test "the truth" do
         time = Benchmark.measure do 
            get root_path
         end
         debugger
         assert true
      end
   end
   