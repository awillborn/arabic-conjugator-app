#encoding: utf-8
get '/' do
  @stuff = %w{ء ب ت ث ج ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه و ي}
  @root1 = 23
  @root2 = 18
  @root3 = 20
  erb :index
end

post '/conjugate' do
  forms = {
    "I" => "1",
    "II" => "2",
    "III" => "3",
    "IV" => "4", 
    "V" => "5", 
    "VI" => "6", 
    "VII" => "7", 
    "VIII" => "8", 
    "X" => "10"
  }

  pronouns = {
    "I" => :I,
    "You (f)" => :you_f,
    "You (m)" => :you_m,
    "He" => :he,
    "She" => :she,
    "We" => :we,
    "You all" => :you_pl,
    "They" => :they
  }
  @verb = Verb.new({root1: params[:root1], root2: params[:root2], root3: params[:root3], form: forms[params[:form]], pronoun: pronouns[params[:pronoun]], tense: params[:tense].downcase}).conjugate
end