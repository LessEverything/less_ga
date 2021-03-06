
class Less::Ga::Data
      
      attr_accessor :range, :ga
      def initialize range: last_30_days, ga: nil
        self.range              = last_30_days
        self.ga                 = ga
      end
  
  
      def accounts
        get "https://www.googleapis.com/analytics/v3/management/accounts"
      end
  
      def profiles account_id
        get  "https://www.googleapis.com/analytics/v3/management/accounts/#{account_id}/webproperties/#{ga.google_analytics_code}/profiles"
      end
  
      def visitors
        hit_api "https://www.googleapis.com/analytics/v3/data/ga?metrics=ga:visits&dimensions=ga:date"
      end
  
      # -total visits
      # direct
      # ppc
      # -organic
      # referrals
      # +mobile
      # 
      # -transactions,ga:transactions
      # revenue
      # cpa???
      # -cpc
      # 
      # -visits, ga:visits
      # direct
      # -cpc, ga:CPC
      # -organic, ga:organicSearches
      # referral, ga:fullReferrer
      # + ga:source
      # -mobile
      # +. For city locations, wed like to list the top 20 cities.
  
  
      # 1. top 20 cities
      # 2. per day for 30days:
      #   1. visits
      #   2. cpc
      #   3. organic
  
      def inbound
        hit_api "https://www.googleapis.com/analytics/v3/data/ga?metrics=ga:visits&dimensions=ga:date"
        #hit_api "https://www.googleapis.com/analytics/v3/data/ga?metrics=ga:organicSearches,ga:CPC,ga:visits&dimensions=ga:date"
      end
  
      def sources
        hit_api "https://www.googleapis.com/analytics/v3/data/ga?metrics=ga:visits&dimensions=ga:source"
      end
  
      def cities
        hit_api "https://www.googleapis.com/analytics/v3/data/ga?metrics=ga:visits&dimensions=ga:city"
      end
  
      private
  
      def get url
        hit_api url
      end
  
  
  
      def final_url url
         u = add_range url
         u = add_id u
         add_token u
      end
  
      def hit_api url
        res = hit_api_directly url
        if (res[:error] && res[:error][:code] == 401) || (res["error"] && res["error"]["code"] == 401)
          if ga.reauth
            res = hit_api_directly url
          end
        end
        res
      end
  
      def hit_api_directly url
        "GaData.hit_api_directly: #{url}".log
        h = ::HTTParty.get final_url(url)
        o = h.parsed_response.respond_to?( :with_indifferent_access ) ? h.parsed_response.with_indifferent_access : h.parsed_response
        "Exiting GaData.hit_api_directly".log
        o
      end
  
      def add_token url
        "#{puctuate_url url}access_token=#{ga.access_token}"
      end
  
      def add_id url
        "#{puctuate_url url}ids=ga:#{ga.profile_id}"
      end
  
      def add_range url
        "#{puctuate_url url}start-date=#{range.first.to_s :db}&end-date=#{range.last.to_s :db}"
      end
  
      def last_30_days
        (Date.current - 30)..Date.current
      end
  
      def puctuate_url url
        if url["?"]
          url += "&"
        else
          url += "?"
        end
      end
    end
