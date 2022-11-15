<html>

<head>

    <meta charset="UTF-8">

    <title>修然 - API</title>

</head>

<body>

<?php

$fileName = 'hello.txt';

$max= 9;

if (!is_file($fileName)) {

    touch('hello.txt');

    $file = fopen($fileName, 'rb+');

    fwrite($file, 1);

    fclose($file);

    return ;

} else {

    $file = fopen($fileName, 'r');

    $content = fread($file,$max);

    fclose($file);

    $file = fopen($fileName, 'w');

    $content++;

    fwrite($file, $content);

    fclose($file);

}

    ?>

<div id="dd" align="center">

  
    

        <?php









switch ($ml) {
   
    case 'num':
        print_r(num());
        break;   
    default:
        print_r(json_encode(["全网启动次数"=>$content,"QQ昵称"=>"😕修然","QQ号"=>"16850567"],JSON_UNESCAPED_UNICODE));
        
}





                                    //输出计数器

            ?>



</div>

</body>

</html>

