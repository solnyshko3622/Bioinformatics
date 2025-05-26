// hello.nf
process sayHello {
    script:
    """
    echo 'Hello World!' > hello.txt
    """
}

workflow {
    sayHello()
}