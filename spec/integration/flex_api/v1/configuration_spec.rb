##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Configuration' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.configuration().fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://flex-api.twilio.com/v1/Configuration',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2016-08-01T22:10:40Z",
          "date_updated": "2016-08-01T22:10:40Z",
          "attributes": {
              "main_attribute": "some_attribute"
          },
          "status": "ok",
          "taskrouter_workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_workflow_sid": "WWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_taskqueue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_taskqueues": [
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "targettable": true
              },
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac",
                  "targettable": false
              }
          ],
          "taskrouter_skills": [
              {
                  "name": "sales",
                  "multivalue": false,
                  "minimum": 0,
                  "maximum": 0
              },
              {
                  "name": "support",
                  "multivalue": true,
                  "minimum": 0,
                  "maximum": 10
              }
          ],
          "taskrouter_worker_channels": {
              "agent": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 1
                  },
                  {
                      "name": "voice",
                      "availability": false,
                      "capacity": 2
                  }
              ],
              "supervisor": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 2
                  }
              ]
          },
          "taskrouter_worker_attributes": {
              "agent": {
                  "region": "us-east"
              },
              "supervisor": {
                  "region": "us"
              }
          },
          "taskrouter_offline_activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "runtime_domain": "https://flex.twilio.com",
          "messaging_service_instance_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "chat_service_instance_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "ui_language": "en",
          "ui_attributes": {},
          "ui_version": "1.0",
          "service_version": "1.0",
          "call_recording_enabled": true,
          "call_recording_webhook_url": "https://www.example.com/call-recording",
          "crm_enabled": true,
          "crm_type": "custom",
          "crm_callback_url": "https://crm.com/a",
          "crm_fallback_url": "https://crm.com/b",
          "crm_attributes": {
              "crm_attribute": "some_crm"
          },
          "public_attributes": {
              "public": "test"
          },
          "url": "https://flex-api.twilio.com/v1/Configuration"
      }
      ]
    ))

    actual = @client.flex_api.v1.configuration().fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.configuration().create()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Configuration',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2016-08-01T22:10:40Z",
          "date_updated": "2016-08-01T22:10:40Z",
          "attributes": {
              "main_attribute": "some_attribute"
          },
          "status": "ok",
          "taskrouter_workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_workflow_sid": "WWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_taskqueue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_taskqueues": [
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "targettable": true
              },
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac",
                  "targettable": false
              }
          ],
          "taskrouter_skills": [
              {
                  "name": "sales",
                  "multivalue": false,
                  "minimum": 0,
                  "maximum": 0
              },
              {
                  "name": "support",
                  "multivalue": true,
                  "minimum": 0,
                  "maximum": 10
              }
          ],
          "taskrouter_worker_channels": {
              "agent": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 1
                  },
                  {
                      "name": "voice",
                      "availability": false,
                      "capacity": 2
                  }
              ],
              "supervisor": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 2
                  }
              ]
          },
          "taskrouter_worker_attributes": {
              "agent": {
                  "region": "us-east"
              },
              "supervisor": {
                  "region": "us"
              }
          },
          "taskrouter_offline_activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "runtime_domain": "https://flex.twilio.com",
          "messaging_service_instance_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "chat_service_instance_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "ui_language": "en",
          "ui_attributes": {},
          "ui_version": "1.0",
          "service_version": "1.0",
          "call_recording_enabled": true,
          "call_recording_webhook_url": "https://www.example.com/call-recording",
          "crm_enabled": true,
          "crm_type": "custom",
          "crm_callback_url": "https://crm.com/a",
          "crm_fallback_url": "https://crm.com/b",
          "crm_attributes": {
              "crm_attribute": "some_crm"
          },
          "public_attributes": {
              "public": "test"
          },
          "url": "https://flex-api.twilio.com/v1/Configuration"
      }
      ]
    ))

    actual = @client.flex_api.v1.configuration().create()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.configuration().update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Configuration',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2016-08-01T22:10:40Z",
          "date_updated": "2016-08-01T22:10:40Z",
          "attributes": {
              "main_attribute": "some_attribute"
          },
          "status": "ok",
          "taskrouter_workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_workflow_sid": "WWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_target_taskqueue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "taskrouter_taskqueues": [
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "targettable": true
              },
              {
                  "sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac",
                  "targettable": false
              }
          ],
          "taskrouter_skills": [
              {
                  "name": "sales",
                  "multivalue": false,
                  "minimum": 0,
                  "maximum": 0
              },
              {
                  "name": "support",
                  "multivalue": true,
                  "minimum": 0,
                  "maximum": 10
              }
          ],
          "taskrouter_worker_channels": {
              "agent": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 1
                  },
                  {
                      "name": "voice",
                      "availability": false,
                      "capacity": 2
                  }
              ],
              "supervisor": [
                  {
                      "name": "default",
                      "availability": true,
                      "capacity": 2
                  }
              ]
          },
          "taskrouter_worker_attributes": {
              "agent": {
                  "region": "us-east"
              },
              "supervisor": {
                  "region": "us"
              }
          },
          "taskrouter_offline_activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "runtime_domain": "https://flex.twilio.com",
          "messaging_service_instance_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "chat_service_instance_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "ui_language": "en",
          "ui_attributes": {},
          "ui_version": "1.0",
          "service_version": "1.0",
          "call_recording_enabled": true,
          "call_recording_webhook_url": "https://www.example.com/call-recording",
          "crm_enabled": true,
          "crm_type": "custom",
          "crm_callback_url": "https://crm.com/a",
          "crm_fallback_url": "https://crm.com/b",
          "crm_attributes": {
              "crm_attribute": "some_crm"
          },
          "public_attributes": {
              "public": "test"
          },
          "url": "https://flex-api.twilio.com/v1/Configuration"
      }
      ]
    ))

    actual = @client.flex_api.v1.configuration().update()

    expect(actual).to_not eq(nil)
  end
end