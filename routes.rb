Catgoose.draw do |map|
  map.route 'split_code' => splitCode
  map.route 'get_code' => getCode
  map.route 'send_words' => sendWords
end
