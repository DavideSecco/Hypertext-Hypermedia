<!-- XPATH -->
    relative path: step/step/...
    absolute path: /step/step/...

    A step consists of:
        - an axis
        - a node-test
        - zero or more predicates

    Step – full syntax: 
    axis::node-test [predicate1] [predicate2] ... 
    axis – direction in document tree 
    node-test – selecting nodes by kind, name, or type
    predicates – (0 or more) additional logical conditions for filtering


    "/" represents the Document info item (root)
    * matches any element                                --> "author/*"
    @ means attribute                                    --> "classes/@kind"
    "//" matches elements that aren't direct children   --> "classes//theme" or "//theme"

    XPath treat XML as a tree of elements
    Root of tree – document node main element (aka document element) is not the root
    "Leaf" may be: tag, attribute, processing instruction, comment, text, namespace
    "leaves" (plurale di foglie) are related by ”branches” - axes
    Nodes
    Relations between nodes
    child, parent, descendant , ancestor, sibling

<!-- context node (è il nodo attuale) -->
    You can address the context node as '.' --> ./@*
    The context node is implicit.
    range/component ≡ ./range/component
    The context node does not have to be an element.

    From the context node you can access your parent and ancestors.
    '..' represents the parent.
    You can go back many levels: ../../classes

<!-- Axis -->
    AXIS are direction of relatioship (anche fratelli possono essere)

<!-- KEYWORD -->
    self 
    child 
    descendant 
    parent 
    ancestor 
    following-sibling 
    preceding-sibling 
    following 
    preceding 
    attribute 
    namespace 
    descendant-or-self 
    ancestor-or-self

    Node test
    by kind of node
    node()
    text()
    comment()
    processing-instruction()
    attribute()
    by name

    .//classes/@kind    expands to    
    self::node()/descendant-or-self::node()/ child::classes/attribute::kind
