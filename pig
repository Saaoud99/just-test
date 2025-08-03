pub fn pig_latin(text: &str) -> String {
    let mut stock = String::new();  
    let voles = "aeiou";
    let mut check = false;

    if voles.contains(&text[0..1].to_lowercase()) {
        stock.push_str(text);
        stock.push_str("ay");
    } else {
        let mut temp = String::new();  
        let mut fin = String::new();  
        for (i, v) in text.chars().enumerate() {
            if i == 1 && v == 'q' && text.chars().nth(i + 1) == Some('u') {
               temp = String::new();
              //  temp.push_str(&text[0..1]);
                temp.push_str(&text[3..]);
                fin.push_str(&text[1..3]);
                stock.push_str(&temp);
                stock.push_str(&fin);
                stock.push_str("ay");
                return stock ;
            }
            if voles.contains(&v.to_string()){
                check = true;
                temp.push_str(&v.to_string());
            }else{
                if check{
                    temp.push_str(&v.to_string());
                }else{
                    fin.push_str(&v.to_string());
                }
                
            }
        }  
        stock.push_str(&temp);
        stock.push_str(&fin);
        stock.push_str("ay");
    }

    stock  
}
