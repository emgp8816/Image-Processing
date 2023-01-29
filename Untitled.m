a=find(i==f);
            b=find(j==c);
for k=1:length(a)
                s=find(b==a(k))
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end