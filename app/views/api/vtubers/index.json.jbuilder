@vtubers.each do |vtuber|
  json.set! vtuber.id do
    json.partial! "vtuber", vtuber: vtuber
  end
end
