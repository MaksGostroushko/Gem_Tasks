require "tasks/version"

module Tasks

    def self.triangle(a, b)
      hypotenuse = Math.sqrt( ( a**2 ) + ( b**2 ) ).round(2)
      area = ( a * b )/2
      { hypotenuse: hypotenuse, area: area }
    end

    def self.average(a, b)
      average_ariphmetic = ( a + b )/2
      average_geometric = Math.sqrt( a * b ).round(1)
      { average_ariphmetic: average_ariphmetic, average_geometric: average_geometric }
    end

    def self.time(h)
      t = Math.sqrt( 2 * ( h/9.8) )
      { t: t }
    end

    def self.period(l)
      t = ( 2 * Math::PI * (l / 9.8 ) ).round(2)
      { t: t }
    end

    def self.area_circle(l)
      s = ( (l ** 2) / 4 * Math::PI ).round(2)
      { s: s }
    end

    def self.sides_triangle(a_1, b_1, r)
      c_1 = ( 180 - ( a_1 + b_1 ) )
      a = 2 * r * Math.sin(a_1 * ( Math::PI/180 ) ).round(2)
      b = 2 * r * Math.sin(b_1 * ( Math::PI/180 ) ).round(2)
      c = 2 * r * Math.sin(c_1.to_i * ( Math::PI/180 ) ).round(2)
      { a: a, b: b, c:c }
    end

    def self.arithmetic_progression(a, d, n)
      s = ( 2 * a + ( n - 1 ) * d ) * n/2
      { s: s }
    end

    def self.distance_between_two_points(x_1, x_2, y_1, y_2)
      point_1 = (x_2 - x_1)
      point_2 = (y_2 - y_1)
      s = Math.sqrt(point_1.to_i**2 + point_2.to_i**2).round(2)
      { s: s }
    end

    def self.mix(v_1, t_1, v_2, t_2)
      z = v_1 + v_2
      t = ( ( v_1 * t_1 ) + ( v_2 * t_2 ) )/z.to_i
      { v: z,
      t: t }
    end

    def self.triangle_area(a)
      s = ( a**2 ) * (Math.sqrt(3)/4).round(2)
      { s: s }
    end

    def self.trapezium(a, b, c)
      if a < b
        puts "Mistake..b can't be greater than a"
      end
        x = ( ( ( a - b )/2 ) * Math.tan(c) ).round(2)
        s = ( ( a + b ) * x.to_i)/2
      { h: x,
        s: s }
    end

    def self.equality(a, b, c)
      if a < b && b < c
        p = "Equality is fulfilled"
      else
        p = "We have trouble with equality"
      end
        { :p => p }
    end

    def self.x_or_y(x, y)
      if x > y
        z = x - y
      else
        z = y - x + 1
      end
        { z: z }
    end

    def self.a_or_both(a, b)
      if a > b
        p = "First item"
      else
        p = "Both items"
      end
      { :p => p }
    end

    def self.even_number(n)
      if n % 2 == 0
        p = "Number is even"
      else
        p = "Sorry,number isn't even"
      end
        { :p => p}
    end

    def self.check(a, b, r, z)
      ab = a % b
      if ab == r || ab == z
        s = "Really,the remainder is set to the given numbers"
      else
        s = "No,the remainder is no set to the given numbers"
      end
      { :s => s }
    end

    def self.number_of_hundreds(n)
      num = n / 100
      if n > 99
        s = 1
      else
        s = 2
      end
        {s: s}
    end

    def self.sixty_seven(n)
      x = n.to_s.length # number of digits in number
      z = n.to_s.chars.map { |sum,n| sum = sum.to_i + n.to_i}  # display sum
      x = n.to_s.split('')
      y = x.to_a
      f = "Display the first digit " + y[0].to_s # display first digit
      s = "Display the last digit " + y[-1].to_s # display the last digit
      t = "Display the penultimate digit " + y[-2].to_s  # dispaly penultimate digit
      { :f => f, :s => s, :t => t}
    end

    def self.sixty_eight_a(n)
      if n.to_s.reverse == n.to_s
        p = "This number is palindrome"
      else
        p = "This number is'nt palindrome"
      end
      { :p => p }
    end

    def self.fourty(a, b)
      if a <= b
        p = ("a = 0")
        a = 0
      else
        p = "a > b"
      end
      { :p => p }
    end

    def self.age(n)
      if n % 10 == 1 && n != 11
        p = " Год "
      elsif n >= 5 && n <= 20
        p = " Лет "
      elsif n % 10 <= 4 && n % 10 > 0
        p = " Годa "
      else
        p = " Лет "
      end
        {:p => p }
    end

    def self.power(n)
      x = n**2
      { x: x }
    end

    def self.factor(n)
      x = Math.gamma(n+1)
      { f: x }
    end

    def self.chs(k, l)
      if k != l
        sol =  "k != l"
        #k = ( k + l) && l = ( k + l )
      else
        sol = "k && l = 0"
        #k = 0 && l = 0
      end
        { :sol => sol }
    end

    def self.sixty_five(n)
        a = n/10
        b = n - a.to_i * 10
      if a**2 == ( a + b )**3
        z = "Yes, n**2 = n(digital**3)"
      else
        z = "No, n**2 != n(digital**3)"
      end
      { :z => z }
    end

    def self.math1(x, y)
      sum  = x + y
      diff = x - y
      comp = x * y
      { sum: sum, diff: diff, comp: comp}
    end

    def self.powers(m1, m2, r)
      x = (m1 * m2)/(r**2)
      { sol: x }
    end

    def self.fou_one(a, b, c)
      if a >= 1 && a <= 3
        a = "belong to the gap"
      else
        a = "do not belong to the gap"
      end

      if b >= 1 && b <= 3
        b = "belong to the gap"
      else
        b = "do not belong to the gap"
      end

      if c >= 1 && c <= 3
        c = "belong to the gap"
      else
        c = "do not belong to the gap"
      end
      { a: a, b:b, c:c}
    end

    def self.half_or_double(x, y)
      if x < y
        x = ( x + y ) / 2
        y = ( x + y ) * 2
      else
        y = ( x + y ) / 2
        x = ( x + y ) * 2
      end
        { sol1: x,
          sol2: y }
    end

    def self.dano(a, b)
      c = ( Math.sqrt( ( b**2 ) - ( a ** 2 ) ) ).round(0)
      r = ( ( a + c - b)/2 ).round(0)
      { c: c,
        r: r }
    end

    def self.two_tasks(x)
      result_1 = ( 1 - 2 * x + ( 3 * (x**2 ) ) - ( 4 * ( x**3 ) ) )
      result_2 = ( 1 + 2 * x + ( 3 * (x**2 ) ) + ( 4 * ( x**3 ) ) )
      { result_1: result_1, result_2: result_2 }
    end

    def self.cube(a)
      v = ( a**3 )
      s = ( 6 * ( a**2 ) )
      { v: v, s:s }
    end

    def self.quadratic_equation(a, b, c)
      d = b * b - 4 * a * c

      if (d == 0)
        x1 = ( -b/2/a ) && x2 = ( -b/2/a )
      else
      end

      if (d > 0)
        x1 = ( (-b-Math.sqrt(d))/2/a).round(2)
        x2 = ( (-b+Math.sqrt(d))/2/a).round(2)
      else
        x1 = (-b/2/a) +(Math.sqrt(-d)/2/a).round(2)
        x2 = (-b/2/a) +(-Math.sqrt(-d)/2/a).round(2)
      end
        { x1: x1, x2: x2 }
    end

    def self.gsub(n)
        n.downcase!
      if n.to_s.gsub!(/!/, ".")
        s = "Your redacted string is #{n}"
      else
        puts "Nothing to do here!"
      end
        puts "Your string is: #{n}"
        { :s => s }
    end

    def self.string(n)
      puts "Your string before readected: " + "#{n}"
      n.delete! "*"
      str1 = "Your string after readected: #{n}"
      { :str1 => str1 }
    end

    def self.include_scan(n)
      if n.include? "eeeee"
        s = "Yes, string include 'eeeee' "
      else
        s = "No, string includen't 'eeeee' "
      end
        { :s => s }
    end

    def self.gsub_include(n)
      if n.to_s.include? "*"
         x = n.gsub(/!/, "-")
      end
      puts "Text before redacted: #{n}"
        z = "Text after redacted: #{x}"
        { :z => z }
    end

    def self.real(a, b, c, d)
      z = [a ** 2, b ** 2, c ** 2, d ** 2 ]
      if a <= b && b <= c && c <= d
        norm = "Highest number "
      elsif a > b && b > c && c > d
        norm = "Digital in normal"
      else
        norm = "Squares of numbers #{z}"
      end
      { :norm => norm }
    end

    def self.put(a)
      arr = []
      x =  ( 1..a ).select{ |x| arr << x if a % x == 0 }
      { res: arr}
    end

    def self.fact(m, n)
      n_1 = Math.gamma(n+1)
      m_1 = Math.gamma(m+1)
      m_n = Math.gamma( ( m + n ) + 1 )
      { result: ( n_1 + m_1 )/m_n }
    end

    def self.positive_power_two(a, b, c)
      if a > 0
        a = a ** 2
      end
      if b > 0
        b = b ** 2
      end
      if c > 0
        c = c ** 2
      end
        { c: c }
    end

    def self.mosn(x, y)
      max = [x, y].max
      min = [x, y].min
      minmax = [x, y].minmax
      {max: max, min: min, minmax: minmax}
    end

    def self.temp(b)

       to_f = ( ( 0..b ).each { |t| return ( t * 1.8 + 32 ).round(2) } )
       { to_f: to_f }
    end

    def self.rad(r1, r2)
      if r1 < r2
        r = ( Math::PI * ( r1 ** 2) - ( r2 ** 2) ).round(2)
      else
        r = "das"
    end
        { r: r }
    end

    def self.new(v1, v2, a1, a2, s)
      result = ( (-(v1+v2)+Math.sqrt( ( (v1+v2) ** 2 )+ 2 * ( a1 + a2 ) * s ) )/( a1 + a2 ) ).round(0)
      { result: result }
    end

    def self.test(n)
      if n.to_s.include?("3")
        p = "Yes,include"
      else
        p = "No"
      end
      { :p => p}
    end

    def self.children(n)
        z = n.gsub!(/child/, "children")
        { :p => "#{z}" }
    end

    def self.average2(a, b)
      average_ariphmetic = ( a.abs + b.abs ) / 2
      average_geometric = Math.sqrt( a.abs * b.abs ).round(1)
      { average_ariphmetic: average_ariphmetic, average_geometric: average_geometric }
    end

    def self.does_it_exist(x, y, z)
      if x + y >= z || x + z >= y || y + z >= x
       s1 = "Triangle exist"
      else
       s2 = "This is not triangle"
      end

      if x < y
        k = x;
        m = y;
      else
        k = y;
        m = x;
      end

      if
        m < z
        h = z
      else
        h = m;
        m = z;
      end

      t1 = h * h
      t2 = k * k + m * m

      if t1 < t2
        t1 = "This is an angular triangle"
      else
        t2 = "This isn't an angular triangle"
      end
      { rez1: s1, rez2: t2 }
    end

    def self.defs(a, b)
        x = a.to_i.gcdlcm b.to_i
      if a.to_i == 0 || b.to_i == 0
        p = "Danger!You try division on 0"
      else
        p = "Greatest common divisor"
    end
        { :p => p }
    end
  end
