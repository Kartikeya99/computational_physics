function dp_animated(x1, x2, y1, y2, l1, l2)
Ncount=0;
fram=0;
figure(4)
for i=1:length(x1)
    Ncount=Ncount+1;
    fram=fram+1;
    plot(0, 0,'.','markersize',20);
    hold on;
    plot(x1(i),y1(i),'.','markersize',20);
    plot(x2(i),y2(i),'.','markersize',20);
    hold off;
    line([0 x1(i)], [0 y1(i)],'Linewidth',2);
    axis([-(l1+l2) l1+l2 -(l1+l2) l1+l2]);
    line([x1(i) x2(i)], [y1(i) y2(i)],'linewidth',2);
    h=gca; 
    get(h,'fontSize') ;
    set(h,'fontSize',12);
    xlabel('X','fontSize',12);
    ylabel('Y','fontSize',12);
    title('Animated Movie');
    fh = figure(4);
    set(fh, 'color', 'white'); 
    F=getframe;
end
