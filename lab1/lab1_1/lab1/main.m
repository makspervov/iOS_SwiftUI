//
//  main.m
//  lab1
//
//  Created by student on 07/03/2023.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSNumber *liczba = [[NSNumber alloc] initWithFloat:23.34];
        NSLog(@"%@" , liczba);
        NSLog(@"%.2f", [liczba  floatValue]);
        NSNumber *liczba2 = @123.345;
        NSLog(@"%d", [liczba2 intValue]);
        int i = arc4random_uniform(10)+1;
        NSLog(@"I: %d",i);
        NSString * s = @"Ala ma kota";
        NSString * s2 = @"DRUGI";
        //NSString *ss = [[[NSString alloc] initWithFormat:@"  %@",s,s2]];
       // NSLog(@"%d %c",[ss length],[ss characterAtIndex: 4]);
        
        
        //if([ss length]>10){
        //    NSLog(@"Wiecej niz 10");
        //} else {
        //    NSLog(@"Wiecej");
        //}
        //int a;
        //NSLog(@"PODAJ COS");
        //scanf("%d", &a);
        //switch(a){
         //   case 0:{
         //       NSLog(@"%d" , a);
         //       break;
         //   }
         //   case 1:{
          //      NSLog(@"%d",a);
          //      break;
                
           // }
           // default: {
            //    NSLog(@"%d",a);
            //}
        //}
        
        
        //zad1
        int n = arc4random_uniform(3)+1;
        NSLog(@"Liczba 1: %d" , n);
        int k = arc4random_uniform(3)+1;
        NSLog(@"Liczba 2: %d" , k);
        int m = arc4random_uniform(3)+1;
        NSLog(@"Liczba 3: %d" , m);
        int suma;
        suma = n+k+m;
        NSLog(@"Suma: %d",suma);
        int srednia = suma/3;
        NSLog(@"Srednia: %d" , srednia);
        
        //zad2
        int a = arc4random_uniform(50)+1;
        int b = arc4random_uniform(50)+1;
        int c = arc4random_uniform(50)+1;
        int srednia2 = a+b+c/3;
        
        int number1 = arc4random_uniform(5)+1;
        int number2 = arc4random_uniform(5)+1;
        int number3 = arc4random_uniform(5)+1;
        int sredniawazona = (a*number1 + b*number2 + c*number3)/(int)(number1+number2+number3);
        
        NSLog(@"Srednia: %d", srednia2);
        NSLog(@"Srednia wazona: %d" , sredniawazona);
        ///
        ///
        ///zad3
        
        NSLog(@"Podaj rok zeby wyznaczyc przestepny czy nie");
        int rok;
        scanf("%d" , &rok);
        if((rok % 4 == 0 && rok % 100 != 0) || rok % 400 == 0){
            NSLog(@"Przestepny");
        } else {
            NSLog(@"Nie jest przestepny");
        }
        //zad4
        NSLog(@"Podaj ocene: ");
        float ocena;
        scanf("%f" , &ocena);
        switch((int)ocena){
            case 6:
                NSLog(@"A");
                break;
            case 5:
                NSLog(@"B");
                break;
            case 4:
                NSLog(@"C");
                break;
            case 3:
                NSLog(@"D");
                break;
            case 2:
                NSLog(@"E");
                break;
            case 1:
                NSLog(@"F");
                break;
            default:
                NSLog(@"Wprowadz 0d 1-6");
                
                
        }
        
    }
    return 0;
}
