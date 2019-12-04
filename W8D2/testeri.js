function madlib(verb, adj, noun) {
    verb = verb.toUpperCase()
    console.log(`We shall ${verb} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`)
}

// madlib("make", "best", "guac")

function isSubstring(searchString, subString) {
    return searchString.includes(subString)
}

// console.log(isSubstring('ma and cheese', 'mac'))

function fizzbuzz(arr) {
    let arr2 = []
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] % 3 === 0 && arr[i] % 5 != 0) {
            arr2.push(arr[i])
        } if (arr[i] % 3 != 0 && arr[i] % 5 === 0) {
            arr2.push(arr[i])
        }
    }
    return arr2
}

// console.log(fizzbuzz([1,2,3,4,5,9,15,25]))

function isPrime(n) {
    for (let i = n-1; i > 1; i--) {
        if (n % i === 0) {
            return false
        }
    }
    return true
}

// console.log(isPrime(15485863))

function sumOfNPrimes(n) {
    let count = 0
    let sum = 0
    let i = 2
    while (count < n){
        if (isPrime(i)) {
            sum += i
            count += 1
        }
        i += 1
    }
    return sum
}

console.log(sumOfNPrimes(4))
