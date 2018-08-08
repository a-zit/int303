/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.model;

/**
 *
 * @author INT303
 */
public class SimpleCalculator {
    int x;
    int y;
    String operator;

    @Override
    public String toString() {
    return String.format("x = %d, y = %d, Operator = %s, %d %s %d = %.2f,",
                        x, y, operator, x, operator, y, getResult());
    }

    public double getResult(){
        if (operator.equals("+")) {
                    return  x + y;
                }else if(operator.equals("-")){
                    return  x-y;
                }
                else if (operator.equals("/")) {
                    double newX = (double)x;
                    double newY = (double)y;
                    return (newX / newY);
                } else if (operator.equals("*")) {
                    return x * y;
                }
        return 0;
    }
    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
    
}
