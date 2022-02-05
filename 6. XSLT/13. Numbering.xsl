<!-- Numbering -->
    xsl:number
    it can be located anywhere in the templates also in for-each element
    defining the form of the number - attribute format
    ◦ 1 1,2,3...
    ◦ 01 01,02,03,...
    ◦ a a,b,c,...z,aa...
    ◦ B A,B,C...
    ◦ i i,ii,iii,iv,...

<!-- level attribute -->
    ◦ = ”any”       --> continuous numbering of elements regardless of their parent element
    ◦ = ”multiple”  --> multi-level numbering (eg 1.2; 3.2.4, …)
    
    the possibility of grouping numbering
        ◦ grouping-separator , grouping-size
            ◦ grouping-separator=”.” , grouping-size=”3”
            ◦ 12345678 -> 12.345.678 

<!-- EXAMPLE :-->
    <xsl:number value="position()" format="I" />

		<!-- durante la lezione spiega anche il caso in cui gli elenchi non vengano ordinati -->