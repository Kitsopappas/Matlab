## Matlab exercises

>Created by Pappas Christodoylos

```sh
function vicinity(img_path, n)
 img = imread(img_path); %read the image
 [x,y]=size(img); %get the image size
 %img_copy = img;%copy the image <- did not went well :/
 img_copy = zeros(x,y);
 for i=1:(x)
        for j=1:(y)
            if(img(i,j)==1)
    img_copy(i,j) = 255;
            end;
            if(img(i,j)==0)
    img_copy(i,j) = 0;
            end;
        end;

 end;
```
## How to use
>vicinity.m

* Open Matlab
* Select an image(binary) and store it to a variable
.. *e.x. path = 'C:\Users\Χριστόδουλος\Desktop\sample img\panda.bmp' (optional)
* Change to the directory with the file that contains our function
* Use the function
..* e.x. vicinity(path, 4)
..* vicinity(path, 8)
..* vicinity(path, 222)
* Grade my effort :)

![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "4 ng image")
