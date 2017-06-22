##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Fax < Domain
      class V1 < Version
        class FaxList < ListResource
          ##
          # Initialize the FaxList
          # @param [Version] version Version that contains the resource
          # @return [FaxList] FaxList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Faxes"
          end

          ##
          # Lists FaxInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [String] from Filters the returned list to only include faxes sent from
          #   the supplied number, given in E.164 format.
          # @param [String] to Filters the returned list to only include faxes sent to the
          #   supplied number, given in E.164 format.
          # @param [Time] date_created_on_or_before Filters the returned list to only
          #   include faxes created on or before the supplied date, given in ISO 8601 format.
          # @param [Time] date_created_after Filters the returned list to only include faxes
          #   created after the supplied date, given in ISO 8601 format.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #                   guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
          #  the default value of 50 records.  If no page_size is                      defined
          #  but a limit is defined, stream() will attempt to read                      the
          #  limit with the most efficient page size,                      i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(from: :unset, to: :unset, date_created_on_or_before: :unset, date_created_after: :unset, limit: nil, page_size: nil)
            self.stream(
                from: from,
                to: to,
                date_created_on_or_before: date_created_on_or_before,
                date_created_after: date_created_after,
                limit: limit,
                page_size: page_size
            ).entries
          end

          ##
          # Streams FaxInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [String] from Filters the returned list to only include faxes sent from
          #   the supplied number, given in E.164 format.
          # @param [String] to Filters the returned list to only include faxes sent to the
          #   supplied number, given in E.164 format.
          # @param [Time] date_created_on_or_before Filters the returned list to only
          #   include faxes created on or before the supplied date, given in ISO 8601 format.
          # @param [Time] date_created_after Filters the returned list to only include faxes
          #   created after the supplied date, given in ISO 8601 format.
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to                      read the
          #  limit with the most efficient page size,                       i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(from: :unset, to: :unset, date_created_on_or_before: :unset, date_created_after: :unset, limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(
                from: from,
                to: to,
                date_created_on_or_before: date_created_on_or_before,
                date_created_after: date_created_after,
                page_size: limits[:page_size],
            )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields FaxInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [String] from Filters the returned list to only include faxes sent from
          #   the supplied number, given in E.164 format.
          # @param [String] to Filters the returned list to only include faxes sent to the
          #   supplied number, given in E.164 format.
          # @param [Time] date_created_on_or_before Filters the returned list to only
          #   include faxes created on or before the supplied date, given in ISO 8601 format.
          # @param [Time] date_created_after Filters the returned list to only include faxes
          #   created after the supplied date, given in ISO 8601 format.
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to read the
          #                       limit with the most efficient page size, i.e. min(limit, 1000)
          def each
            limits = @version.read_limits

            page = self.page(
                page_size: limits[:page_size],
            )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of FaxInstance records from the API.
          # Request is executed immediately.
          # @param [String] from Filters the returned list to only include faxes sent from
          #   the supplied number, given in E.164 format.
          # @param [String] to Filters the returned list to only include faxes sent to the
          #   supplied number, given in E.164 format.
          # @param [Time] date_created_on_or_before Filters the returned list to only
          #   include faxes created on or before the supplied date, given in ISO 8601 format.
          # @param [Time] date_created_after Filters the returned list to only include faxes
          #   created after the supplied date, given in ISO 8601 format.
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of FaxInstance
          def page(from: :unset, to: :unset, date_created_on_or_before: :unset, date_created_after: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'From' => from,
                'To' => to,
                'DateCreatedOnOrBefore' => Twilio.serialize_iso8601_datetime(date_created_on_or_before),
                'DateCreatedAfter' => Twilio.serialize_iso8601_datetime(date_created_after),
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })
            response = @version.page(
                'GET',
                @uri,
                params
            )
            FaxPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of FaxInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of FaxInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            FaxPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of FaxInstance records from the API.
          # Request is executed immediately.
          # @param [String] to The phone number or SIP address to send the fax to,
          #   E.164-formatted.
          # @param [String] media_url The URL that Twilio will request to obtain the fax
          #   media to send, which must be a PDF file.
          # @param [fax.Quality] quality The quality setting to use for this fax. One of
          #   `standard`, `fine` or `superfine`.
          # @param [String] status_callback The URL that Twilio will request when the status
          #   of the fax changes.
          # @param [String] from The phone number to use as the caller id, E.164-formatted.
          #   If using a phone number, it must be a Twilio number or a verified outgoing
          #   caller id for your account. If sending to a SIP address, this can be any
          #   alphanumeric string (plus the characters `+`, `_`, `.`, and `-`) to use in the
          #   From header of the SIP request.
          # @param [String] sip_auth_username The username to use for authentication when
          #   sending to a SIP address. Allowed characters are alphanumeric characters, plus
          #   `-`, `&`, `=`, `+`, `$`, `,`, `;`, `:`, `?`, `/`, `_`, `.`, `!`, `~`, `*`, `'`,
          #   `(`, and `)`.
          # @param [String] sip_auth_password The password to use for authentication when
          #   sending to a SIP address. Allowed characters are alphanumeric characters, plus
          #   `-`, `&`, `=`, `+`, `$`, `_`, `.`, `!`, `~`, `*`, `'`, `(`, and `)`.
          # @return [FaxInstance] Newly created FaxInstance
          def create(to: nil, media_url: nil, quality: :unset, status_callback: :unset, from: :unset, sip_auth_username: :unset, sip_auth_password: :unset)
            data = Twilio::Values.of({
                'To' => to,
                'MediaUrl' => media_url,
                'Quality' => quality,
                'StatusCallback' => status_callback,
                'From' => from,
                'SipAuthUsername' => sip_auth_username,
                'SipAuthPassword' => sip_auth_password,
            })

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            FaxInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Fax.V1.FaxList>'
          end
        end

        class FaxPage < Page
          ##
          # Initialize the FaxPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [FaxPage] FaxPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of FaxInstance
          # @param [Hash] payload Payload response from the API
          # @return [FaxInstance] FaxInstance
          def get_instance(payload)
            FaxInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Fax.V1.FaxPage>'
          end
        end

        class FaxContext < InstanceContext
          ##
          # Initialize the FaxContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid A 34 character string that uniquely identifies this fax.
          # @return [FaxContext] FaxContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {
                sid: sid,
            }
            @uri = "/Faxes/#{@solution[:sid]}"

            # Dependents
            @media = nil
          end

          ##
          # Fetch a FaxInstance
          # @return [FaxInstance] Fetched FaxInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            FaxInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Update the FaxInstance
          # @param [fax.UpdateStatus] status The updated status of this fax. The only valid
          #   option is `canceled`. This may fail if the status has already started
          #   transmission.
          # @return [FaxInstance] Updated FaxInstance
          def update(status: :unset)
            data = Twilio::Values.of({
                'Status' => status,
            })

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            FaxInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Deletes the FaxInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            @version.delete('delete', @uri)
          end

          ##
          # Access the media
          # @return [FaxMediaList] FaxMediaList
          def media(sid=:unset)
            if sid != :unset
              return FaxMediaContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @media
              @media = FaxMediaList.new(
                  @version,
                  fax_sid: @solution[:sid],
              )
            end

            @media
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Fax.V1.FaxContext #{context}>"
          end
        end

        class FaxInstance < InstanceResource
          ##
          # Initialize the FaxInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid A 34 character string that uniquely identifies this fax.
          # @return [FaxInstance] FaxInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'sid' => payload['sid'],
                'account_sid' => payload['account_sid'],
                'from' => payload['from'],
                'to' => payload['to'],
                'quality' => payload['quality'],
                'media_sid' => payload['media_sid'],
                'media_url' => payload['media_url'],
                'num_pages' => payload['num_pages'] == nil ? payload['num_pages'] : payload['num_pages'].to_i,
                'duration' => payload['duration'] == nil ? payload['duration'] : payload['duration'].to_i,
                'status' => payload['status'],
                'direction' => payload['direction'],
                'api_version' => payload['api_version'],
                'price' => payload['price'].to_f,
                'price_unit' => payload['price_unit'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                'links' => payload['links'],
                'url' => payload['url'],
            }

            # Context
            @instance_context = nil
            @params = {
                'sid' => sid || @properties['sid'],
            }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @param [Version] version Version that contains the resource
          # @return [FaxContext] FaxContext for this FaxInstance
          def context
            unless @instance_context
              @instance_context = FaxContext.new(
                  @version,
                  @params['sid'],
              )
            end
            @instance_context
          end

          def sid
            @properties['sid']
          end

          def account_sid
            @properties['account_sid']
          end

          def from
            @properties['from']
          end

          def to
            @properties['to']
          end

          def quality
            @properties['quality']
          end

          def media_sid
            @properties['media_sid']
          end

          def media_url
            @properties['media_url']
          end

          def num_pages
            @properties['num_pages']
          end

          def duration
            @properties['duration']
          end

          def status
            @properties['status']
          end

          def direction
            @properties['direction']
          end

          def api_version
            @properties['api_version']
          end

          def price
            @properties['price']
          end

          def price_unit
            @properties['price_unit']
          end

          def date_created
            @properties['date_created']
          end

          def date_updated
            @properties['date_updated']
          end

          def links
            @properties['links']
          end

          def url
            @properties['url']
          end

          ##
          # Fetch a FaxInstance
          # @return [FaxInstance] Fetched FaxInstance
          def fetch
            context.fetch
          end

          ##
          # Update the FaxInstance
          # @param [fax.UpdateStatus] status The updated status of this fax. The only valid
          #   option is `canceled`. This may fail if the status has already started
          #   transmission.
          # @return [FaxInstance] Updated FaxInstance
          def update(status: :unset)
            context.update(
                status: status,
            )
          end

          ##
          # Deletes the FaxInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            context.delete
          end

          ##
          # Access the media
          # @return [media] media
          def media
            context.media
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Fax.V1.FaxInstance #{values}>"
          end
        end
      end
    end
  end
end