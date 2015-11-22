    % Pappas Christodoylos
    % Ionian University
    % /. = end of block

%-------- How to use --------%

    %vicinity.m
    
    % Open Matlab
    % Select an image(binary) and store it to a variable
    %  e.x. path = 'C:\Users\Χριστόδουλος\Desktop\sample img\panda.bmp' (optional)

    % Change to the directory with the file that contains our function
    % Use the function
    %  e.x. vicinity(path, 4) 
    %       vicinity(path, 8) 
    %       vicinity(path, 222)
    % Grade my effort :)

%------ /. How to use --------%
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
 end;% /. copy the image
        
    switch n %check if the given number is correct
        case 4
            for r=1:(x)
             for c=1:(y)
                 if (r + 1 <= x || r - 1 >= x && c + 1 <= y || c-1 >= y) %avoid index out of bounds error
                    if (img(r,c)==0)
                     %4 neighbor
                        if (img(r,(c-1))== 0 && img((r+1),c) ==0  && img((r-1),c) ==0 && img(r,(c+1))==0)
                            img_copy(r,c) = 0.9; % the perfect woman is purple
                        end; % /. change colors
                     end; % /. pixel is black
                  end; % /. avoid index out of bounds error
              end;        
           end;
            subplot(2,2,2),imshow(img_copy)
            title('\color{red}4-Neighbor');

            subplot(2,2,1), imshow(img)
            title('\color[rgb]{0 .5 .5}Original img');
    
        case 8
            for r=1:(x)
             for c=1:(y)
                 if (r + 1 <= x || r - 1 >= x && c + 1 <= y || c-1 >= y) %avoid index out of bounds error
                    if (img(r,c)==0)
                     %8 neighbor
                         if (img((r-1),(c-1))==0 && img((r+1),(c-1))==0 && img((r+1),(c+1))==0 && img((r-1),(c+1))==0 && img(r,(c-1))== 0 && img((r+1),c) ==0  && img((r-1),c) ==0 && img(r,(c+1))==0)

                             img_copy(r,c) =0.9;
                         end; % /. change colors
                     end; % /. pixel is black
                  end; % /. avoid index out of bounds error
              end;        
           end;
            subplot(2,2,2),imshow(img_copy)
            title('\color{red}8-Neighbor');

            subplot(2,2,1), imshow(img)
            title('\color[rgb]{0 .5 .5}Original img');
        case 222
            for r=1:(x)
             for c=1:(y)
                 
                 if (r + 1 <= x || r - 1 >= x && c + 1 <= y || c-1 >= y) %avoid index out of bounds error
                     if (img(r,c)==0)
                         if (img((r-1),(c-1))==0 && img((r+1),(c+1))==0 && img((r+1),(c-1))==0 )
                             
                             img_copy(r,c) =0.9;
                          end; % /. change colors
                     end; % /. pixel is black
                 end; % /. avoid index out of bounds error
              end;        
           end;
            subplot(2,2,2),imshow(img_copy)
            title('\color{red}222-Neighbor');

            subplot(2,2,1), imshow(img)
            title('\color[rgb]{0 .5 .5}Original img');
            
            %   * * %
            %   * & *
            %   % * %
            % % = the pixels we get // * = the pixels we don't get
        otherwise 
            disp ('error - please enter values (4 ,8 or 222)') 
    
    end; % /. switch
    
end % /. function vicinity