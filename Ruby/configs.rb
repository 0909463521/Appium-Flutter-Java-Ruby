USER_NAME = "kobitonadmin"
API_KEY = "2b66e428-b4a0-478c-909c-780b9f1f13bc"

class DesiredCapabilities
 
 def desired_caps_android_app
  desired_caps = {
    :caps => {
      :sessionName =>        'Automation test session',
      :sessionDescription => '',
      :deviceOrientation =>  'portrait',
      :captureScreenshots => true,
      :browserName =>        'chrome',
      # The given group is used for finding devices and the created session will be visible for all members within the group.
      :groupId =>            320, # Group: TestJira
      :deviceGroup =>        'KOBITON',
      # For deviceName, platformVersion Kobiton supports wildcard
      # character *, with 3 formats: *text, text* and *text*
      # If there is no *, Kobiton will match the exact text provided
      :deviceName =>         'Galaxy On Nxt',
      :platformName =>       'Android',
      :platformVersion =>    '8.1.0',
      :retry_backoff_time => 5000,
      :automationName => 'Flutter',
      :app => 'https://kobiton-devvn.s3-ap-southeast-1.amazonaws.com/apps-test/demo/app-debug-all.apk'

    },
    :appium_lib => {
      :server_url => "https://#{USER_NAME}:#{API_KEY}@api-staging.kobiton.com/wd/hub",
      :wait_timeout => 20,
      :wait_interval => 1
    }.freeze
  }
   return desired_caps
 end

 def desired_caps_ios_app
   desired_caps = {
     :caps => {
      :sessionName =>        'Automation test session',
      :sessionDescription => '',
      :deviceOrientation =>  'portrait',
      :noReset =>            true,
      :fullReset =>          false,
      :captureScreenshots => true,
      :browserName =>        'safari',
      :deviceGroup =>        'ORGANIZATION',
      # For deviceName, platformVersion Kobiton supports wildcard
      # character *, with 3 formats: *text, text* and *text*
      # If there is no *, Kobiton will match the exact text provided
      :deviceName =>         'iPhone X',
      # The tag is used for finding devices and the user can input only one tag. 
      # For example, the data value will be inputted: tagName="TagName1"
      :tagName =>            '',
      :platformName =>       'iOS',
      :platformVersion =>    '14.2' ,
       :retry_backoff_time => 5000,
       :automationName => 'Flutter',
       :app => 'https://kobiton-devvn.s3-ap-southeast-1.amazonaws.com/apps-test/demo/Runner.zip'
     },
     :appium_lib => {
       :server_url => "https://#{USER_NAME}:#{API_KEY}@api-staging.kobiton.com/wd/hub",
       :wait_timeout => 20,
       :wait_interval => 1
     }
   }.freeze
   return desired_caps
 end
 
end