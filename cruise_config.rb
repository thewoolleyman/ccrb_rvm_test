# Project-specific configuration for CruiseControl.rb
require 'socket'

Project.configure do |project|
  # To add a build for a new interpreter (from ccrb root):
  # ./cruise add ccrb_rvm_test-x_y_z-pxxx -s git -r git://github.com/thewoolleyman/ccrb_rvm_test.git
  interpreter = Regexp.new(/ccrb_rvm_test-(.*)$/i).match(project.name)[1]
  interpreter.gsub!('_','.')

  project.email_notifier.emails = ['thewoolleyman+ccrb_rvm_test@gmail.com']

  project.build_command = "./ci_build.sh '#{interpreter}@ccrb_rvm_test'"

  project.email_notifier.from = 'thewoolleyman+ccrb_rvm_test@gmail.com'
end
