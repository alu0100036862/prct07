# racional_spec.rb

require "rspec"
require "racional"

describe Racional do

  before :each do
    @fraccion1 = Racional.new(2,6)		#fraccion1 = Racional.new(1,3)
    @fraccion2 = Racional.new(8,12)		#fraccion2 = Racional.new(2,3)
  end
	
  it "Debe existir un numerador" do

     @fraccion1.num.should == 1
  end

  it "Debe existir un denominador" do
    @fraccion1.denom.should == 3
  end

  it "Debe de estar en su forma reducida" do
    @fraccion1.should == Racional.new(1,3)
  end

  it "Se debe invocar al metodo num() para obtener el numerador" do
      @fraccion1.respond_to?("num").should == true
  end

  it "Se debe invocar al metodo denom() para obtener el denominador" do
      @fraccion1.respond_to?("denom").should == true
  end

  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @fraccion1.to_s.should == "1/3"
  end

  it "Se debe mostar por la consola la fraccion en formato flotante" do
    @fraccion1.to_f.should == 1.to_f/3.to_f
  end

  it "Se debe comparar si dos fracciones son iguales con ==" do
    @fraccion1.should == Racional.new(10, 30)
  end

  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
    Racional.new(-1,3).abs.should == @fraccion1
  end

  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
    @fraccion1.reciprocal.should == Racional.new(3,1)
  end

  it "Se debe calcular el opuesto de una fraccion con -" do
    (-@fraccion1).should == Racional.new(-3,1)
  end

  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
    (@fraccion1 + @fraccion2).should == Racional.new(1,1)
  end

  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
    (Racional.new(3,3) - @fraccion2).should == @fraccion1
  end

  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    (@fraccion1 * @fraccion2).should == Racional.new(2,9)
  end

  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    (@fraccion1 / @fraccion2).should == Racional.new(1,2)
  end

  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
    (@fraccion1 % @fraccion2).should == Racional.new(1,2)
  end

  it "Se debe de poder comprobar si una fracion es menor que otra" do
    (@fraccion1 < @fraccion2).should == true
  end

  it "Se debe de poder comprobar si una fracion es mayor que otra" do
    (@fraccion1 > @fraccion2).should == false
  end

  it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    (@fraccion1 <= Racional.new(1,3)).should == true
  end

  it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
    (@fraccion1 >= @fraccion2).should == false
  end

  it "Se debe calcular el recíproco de la división de  dos fracciones" do
    (@fraccion1 / @fraccion2).reciprocal.should == Racional.new(2,1)
  end

end

