*__ @meal del @date __*

#if @first:
*Primi Piatti*
#for @dish in @first:
• @dish
#end
#end

#if @second:
*Secondi Piatti*
#for @dish in @second:
• @dish
#end
#end

#if @contorno:
*Contorni*
#for @dish in @contorno:
• @dish
#end
#end

#if @takeaway:
Il cestino del takeaway include invece @takeaway
#end
