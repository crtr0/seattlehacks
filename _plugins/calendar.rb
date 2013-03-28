module Jekyll
  
  class CalendarGenerator < Generator
    safe true
 
    def generate(site)
      events = site.tags['event']
      if events
        site.pages << CalendarPage.new(site, events)
      end
    end
  end

  class CalendarPage < Page

    def initialize(site, events)
      @site = site
      @base = site.source
      @dir = '/calendar/'
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(@base, '_layouts'), 'calendar.html')

      # start building a proper list of events to display
      calendar = []

      events.each do |event|
        event.tags.each do |tag|  
          puts tag
          if tag.start_with?('cal:')
            key = tag.split('cal:')[1].split('=')[0]
            value = tag.split('cal:')[1].split('=')[1]
            event.data[key] = value
          end
        end

        if (Date.parse(event.data['start']) >= Date.today)
          calendar << event
        end
      end
      
      self.data['events'] = calendar.sort{|a, b| Date.parse(a.data['start']) <=> Date.parse(b.data['start'])}
    end

  end

end
