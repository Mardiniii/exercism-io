class Bob
  YELL_REGEX          = /(?!\A[0-9\s\W]+\Z)\A[0-9A-Z\s\W]+\Z/
  SILENCE_REGEX       = /\A\Z|^\s+\Z/
  QUESTION_REGEX      = /\A[0-9a-zA-Z\s*\W]+\?\s*\Z/
  YELL_QUESTION_REGEX = /(?!\A[0-9\s\W]+\?\s*\Z)\A[0-9A-Z\s\W]+\?\s*\Z/

  ANSWER           = "Sure.".freeze
  SARCASM          = "Fine. Be that way!".freeze
  WHATEVER         = "Whatever.".freeze
  KEEP_CALM        = "Whoa, chill out!".freeze
  CALM_DOWN_ANSWER = "Calm down, I know what I'm doing!".freeze

  def self.hey(remark)
    return CALM_DOWN_ANSWER if remark =~ YELL_QUESTION_REGEX
    return ANSWER if remark =~ QUESTION_REGEX
    return KEEP_CALM if remark =~ YELL_REGEX
    return SARCASM if remark =~ SILENCE_REGEX

    WHATEVER
  end
end
