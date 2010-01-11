=begin
---------------------------------------------------------- Class: Regexp
     Document-class: Regexp

     A +Regexp+ holds a regular expression, used to match a pattern
     against strings. Regexps are created using the +/.../+ and
     +%r{...}+ literals, and by the +Regexp::new+ constructor.

------------------------------------------------------------------------


Constants:
----------
     IGNORECASE: INT2FIX(RE_OPTION_IGNORECASE)
     EXTENDED:   INT2FIX(RE_OPTION_EXTENDED)
     MULTILINE:  INT2FIX(RE_OPTION_MULTILINE)


Class methods:
--------------
     compile, escape, last_match, new, quote, union, yaml_new


Instance methods:
-----------------
     &, ==, ===, =~, casefold?, eql?, hash, inspect, kcode, match,
     options, source, to_s, to_yaml, |, ~

=end
class Regexp < Object

  # --------------------------------------------------------- Regexp::escape
  #      Regexp.escape(str)   => a_str
  #      Regexp.quote(str)    => a_str
  # ------------------------------------------------------------------------
  #      Escapes any characters that would have special meaning in a regular
  #      expression. Returns a new escaped string, or self if no characters
  #      are escaped. For any string, +Regexp.escape(_str_)=~_str_+ will be
  #      true.
  # 
  #         Regexp.escape('\*?{}.')   #=> \\*\?\{\}\.
  # 
  def self.escape(arg0, arg1, *rest)
  end

  # ---------------------------------------------------------- Regexp::quote
  #      Regexp.escape(str)   => a_str
  #      Regexp.quote(str)    => a_str
  # ------------------------------------------------------------------------
  #      Escapes any characters that would have special meaning in a regular
  #      expression. Returns a new escaped string, or self if no characters
  #      are escaped. For any string, +Regexp.escape(_str_)=~_str_+ will be
  #      true.
  # 
  #         Regexp.escape('\*?{}.')   #=> \\*\?\{\}\.
  # 
  def self.quote(arg0, arg1, *rest)
  end

  # ----------------------------------------------------- Regexp::last_match
  #      Regexp.last_match           => matchdata
  #      Regexp.last_match(fixnum)   => str
  # ------------------------------------------------------------------------
  #      The first form returns the +MatchData+ object generated by the last
  #      successful pattern match. Equivalent to reading the global variable
  #      +$~+. The second form returns the nth field in this +MatchData+
  #      object.
  # 
  #         /c(.)t/ =~ 'cat'       #=> 0
  #         Regexp.last_match      #=> #<MatchData:0x401b3d30>
  #         Regexp.last_match(0)   #=> "cat"
  #         Regexp.last_match(1)   #=> "a"
  #         Regexp.last_match(2)   #=> nil
  # 
  def self.last_match(arg0, arg1, *rest)
  end

  # -------------------------------------------------------- Regexp::compile
  #      Regexp::compile(...)
  # ------------------------------------------------------------------------
  #      Synonym for +Regexp.new+
  # 
  def self.compile(arg0, arg1, *rest)
  end

  # ------------------------------------------------------- Regexp::yaml_new
  #      Regexp::yaml_new( klass, tag, val )
  # ------------------------------------------------------------------------
  #      (no description...)
  def self.yaml_new(arg0, arg1, arg2)
  end

  # ---------------------------------------------------------- Regexp::union
  #      Regexp.union([pattern]*)   => new_str
  # ------------------------------------------------------------------------
  #      Return a +Regexp+ object that is the union of the given _pattern_s,
  #      i.e., will match any of its parts. The _pattern_s can be Regexp
  #      objects, in which case their options will be preserved, or Strings.
  #      If no arguments are given, returns +/(?!)/+.
  # 
  #         Regexp.union                         #=> /(?!)/
  #         Regexp.union("penzance")             #=> /penzance/
  #         Regexp.union("skiing", "sledding")   #=> /skiing|sledding/
  #         Regexp.union(/dogs/, /cats/i)        #=> /(?-mix:dogs)|(?i-mx:cats)/
  # 
  def self.union(arg0, arg1, *rest)
  end

  def self.yaml_tag_subclasses?
  end

  # ------------------------------------------------------------ Regexp#eql?
  #      rxp == other_rxp      => true or false
  #      rxp.eql?(other_rxp)   => true or false
  # ------------------------------------------------------------------------
  #      Equality---Two regexps are equal if their patterns are identical,
  #      they have the same character set code, and their +casefold?+ values
  #      are the same.
  # 
  #         /abc/  == /abc/x   #=> false
  #         /abc/  == /abc/i   #=> false
  #         /abc/u == /abc/n   #=> false
  # 
  def eql?
  end

  # -------------------------------------------------------------- Regexp#==
  #      rxp == other_rxp      => true or false
  #      rxp.eql?(other_rxp)   => true or false
  # ------------------------------------------------------------------------
  #      Equality---Two regexps are equal if their patterns are identical,
  #      they have the same character set code, and their +casefold?+ values
  #      are the same.
  # 
  #         /abc/  == /abc/x   #=> false
  #         /abc/  == /abc/i   #=> false
  #         /abc/u == /abc/n   #=> false
  # 
  def ==
  end

  # ------------------------------------------------------------ Regexp#to_s
  #      rxp.to_s   => str
  # ------------------------------------------------------------------------
  #      Returns a string containing the regular expression and its options
  #      (using the +(?xxx:yyy)+ notation. This string can be fed back in to
  #      +Regexp::new+ to a regular expression with the same semantics as
  #      the original. (However, +Regexp#==+ may not return true when
  #      comparing the two, as the source of the regular expression itself
  #      may differ, as the example shows). +Regexp#inspect+ produces a
  #      generally more readable version of _rxp_.
  # 
  #         r1 = /ab+c/ix         #=> /ab+c/ix
  #         s1 = r1.to_s          #=> "(?ix-m:ab+c)"
  #         r2 = Regexp.new(s1)   #=> /(?ix-m:ab+c)/
  #         r1 == r2              #=> false
  #         r1.source             #=> "ab+c"
  #         r2.source             #=> "(?ix-m:ab+c)"
  # 
  def to_s
  end

  # ---------------------------------------------------------- Regexp#source
  #      rxp.source   => str
  # ------------------------------------------------------------------------
  #      Returns the original string of the pattern.
  # 
  #         /ab+c/ix.source   #=> "ab+c"
  # 
  def source
  end

  def taguri=
  end

  # ------------------------------------------------------------ Regexp#hash
  #      rxp.hash   => fixnum
  # ------------------------------------------------------------------------
  #      Produce a hash based on the text and options of this regular
  #      expression.
  # 
  def hash
  end

  # ------------------------------------------------------------- Regexp#===
  #      rxp === str   => true or false
  # ------------------------------------------------------------------------
  #      Case Equality---Synonym for +Regexp#=~+ used in case statements.
  # 
  #         a = "HELLO"
  #         case a
  #         when /^[a-z]*$/; print "Lower case\n"
  #         when /^[A-Z]*$/; print "Upper case\n"
  #         else;            print "Mixed case\n"
  #         end
  # 
  #      _produces:_
  # 
  #         Upper case
  # 
  def ===
  end

  # ----------------------------------------------------------- Regexp#kcode
  #      rxp.kcode   => str
  # ------------------------------------------------------------------------
  #      Returns the character set code for the regexp.
  # 
  def kcode
  end

  # --------------------------------------------------------------- Regexp#~
  #      ~ rxp   => integer or nil
  # ------------------------------------------------------------------------
  #      Match---Matches _rxp_ against the contents of +$_+. Equivalent to
  #      +_rxp_ =~ $_+.
  # 
  #         $_ = "input data"
  #         ~ /at/   #=> 7
  # 
  def ~
  end

  # ------------------------------------------------------- Regexp#casefold?
  #      rxp.casefold?   => true or false
  # ------------------------------------------------------------------------
  #      Returns the value of the case-insensitive flag.
  # 
  def casefold?
  end

  # ----------------------------------------------------------- Regexp#match
  #      rxp.match(str)   => matchdata or nil
  # ------------------------------------------------------------------------
  #      Returns a +MatchData+ object describing the match, or +nil+ if
  #      there was no match. This is equivalent to retrieving the value of
  #      the special variable +$~+ following a normal match.
  # 
  #         /(.)(.)(.)/.match("abc")[2]   #=> "b"
  # 
  def match
  end

  # --------------------------------------------------------- Regexp#options
  #      rxp.options   => fixnum
  # ------------------------------------------------------------------------
  #      Returns the set of bits corresponding to the options used when
  #      creating this Regexp (see +Regexp::new+ for details. Note that
  #      additional bits may be set in the returned options: these are used
  #      internally by the regular expression code. These extra bits are
  #      ignored if the options are passed to +Regexp::new+.
  # 
  #         Regexp::IGNORECASE                  #=> 1
  #         Regexp::EXTENDED                    #=> 2
  #         Regexp::MULTILINE                   #=> 4
  #      
  #         /cat/.options                       #=> 128
  #         /cat/ix.options                     #=> 131
  #         Regexp.new('cat', true).options     #=> 129
  #         Regexp.new('cat', 0, 's').options   #=> 384
  #      
  #         r = /cat/ix
  #         Regexp.new(r.source, r.options)     #=> /cat/ix
  # 
  def options
  end

  # -------------------------------------------------------------- Regexp#=~
  #      rxp.match(str)   => matchdata or nil
  # ------------------------------------------------------------------------
  #      Returns a +MatchData+ object describing the match, or +nil+ if
  #      there was no match. This is equivalent to retrieving the value of
  #      the special variable +$~+ following a normal match.
  # 
  #         /(.)(.)(.)/.match("abc")[2]   #=> "b"
  # 
  def =~
  end

  # --------------------------------------------------------- Regexp#inspect
  #      rxp.inspect   => string
  # ------------------------------------------------------------------------
  #      Produce a nicely formatted string-version of _rxp_. Perhaps
  #      surprisingly, +#inspect+ actually produces the more natural version
  #      of the string than +#to_s+.
  # 
  #          /ab+c/ix.to_s         #=> /ab+c/ix
  # 
  def inspect
  end

  def taguri
  end

  # --------------------------------------------------------- Regexp#to_yaml
  #      to_yaml( opts = {} )
  # ------------------------------------------------------------------------
  #      (no description...)
  def to_yaml
  end

end
