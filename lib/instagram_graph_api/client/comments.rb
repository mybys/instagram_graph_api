module InstagramGraphApi
  class Client
    module Comments
      def get_media_comments(ig_media_id, fields = nil, options: {})
        fields ||= 'hidden,id,like_count,media,replies,text,timestamp,username'
        query = "comments?fields=#{fields}"
        query += "&after=#{options[:after]}" if options[:after]
        query += "&before=#{options[:before]}" if options[:before]
        query += "&limit=#{options[:limit]}" if options[:limit]
        get_connections(ig_media_id, query)
      end
    end
  end
end
