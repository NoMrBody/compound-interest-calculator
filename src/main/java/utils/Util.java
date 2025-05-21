package utils;

public class Util {
    public static double calculateCompoundInterest(double principalAmount, double interestRate, int years, int compoundingPeriod) {
        return Math.round(principalAmount * Math.pow((1 + interestRate / compoundingPeriod), years * compoundingPeriod) * 100.0) / 100.0;
    }
}
