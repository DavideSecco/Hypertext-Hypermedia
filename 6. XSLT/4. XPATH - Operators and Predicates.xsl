<!-- Operators -->
    Arithmetic:             + - * div mod
    Logical values:         and or
    Comparison operators:   = != < <= > >=

<!-- Predicates -->
    additional logical conditions for filtering
    /path[predicate]
        ◦ they allow you to check properties that can not be expressed in the nodes themselves
        ◦ any XPath expression
        ◦ predicates may contain functions and operators
        ◦ only nodes for which the predicate is true are included in the result

<!-- EXAMPLES -->
    component/theme[last()]
    component/theme[position()<3]
    /course/author/name author | classes/component/topic theme[3]
    classes[@kind=’lecture’]