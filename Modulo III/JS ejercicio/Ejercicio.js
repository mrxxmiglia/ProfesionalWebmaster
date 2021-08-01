if (0 < distancia && distancia <= 1000)
    console.log("Ir a pie");

else if (1000 < distancia && distancia <= 10000)
    console.log("Ir en bicicleta");

else if (10000 < distancia && distancia <= 30000)
    console.log("Ir en colectivo");

else if (30000 < distancia && distancia <= 100000)
    console.log("Ir en auto");

else
    console.log("Ir en avión");

console.log(distancia);

distancia = float(prompt('Ingrese la distancia: '))



var tarea2 = [2, 6, 5, 1, 3, 10, 0];
Math.max(...tarea2);


// var medio = ["pie", "bicicleta", "colectivo", "auto", "avión"];

// function distancia() {
//     var distancia = 0
//     if (distancia >= 0) and(distancia <= 1000) {
//         return medio[0]
//             }
//             else if (distancia >= 1000) and (distancia <= 10000) {
//                 return medio[1]
//             }
//             else if (distancia >= 1000) and(distancia <= 10000) {
//                 return medio[2]
//             }
//             else if (distancia >= 10000) and(distancia <= 30000) {
//                 return medio[3]
//             }
//             else if (distancia >= 30000) and(distancia <= 100000) {
//                 return medio[4]
//             }
//             elseif (distancia >= 100000) {
//                 return medio[5]
//             }



// console.log(distancia);