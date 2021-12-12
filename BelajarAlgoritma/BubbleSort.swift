//
//  BubbleSort.swift
//  BelajarAlgoritma
//
//  Created by mac on 12/12/21.
//

import UIKit

// algoritma Bubble Sort Sort

// array: [1, 8, 4, 3, 5, 10, 21, 55, 6, 44]

// 1. Bandingkan angka pertama dengan angka ke dua
// 2. Jika angka pertama lebih besar dari angka ke dua, tukar
// 3. Lakukan 1 dan 3 hingga baris terakhir.
// 4. Lakukan perbandingan dan tukar hingga tersisa satu angka, dan tidak bisa ditukar lagi

var arrayAngka = [1, 8, 4, 3, 5, 10, 21, 55, 6, 44]

func tukarData(indexKiri: Int, indexKanan: Int, array: [Int]) -> [Int] {
    var dataArray = array
    let currentIndexKiri = dataArray[indexKiri]
    dataArray[indexKiri] = dataArray[indexKanan]
    dataArray[indexKanan] = currentIndexKiri
    return dataArray
}

// lakukan tukar data sampe angka besar tertukar di bagian paling kanan
func doBubble(dataArray: [Int], maxIndex: Int) -> [Int] {
    var data = dataArray
    var leftIndex = -1000
    var rightIndex = 0
    
    if data.count > 1 {
        for index in 0...(data.count - maxIndex) {
            leftIndex = rightIndex
            rightIndex = index + 1
            
            // bandingkan angka pertama dengan angka ke dua
            if data[leftIndex] > data[rightIndex] {
                data = tukarData(indexKiri: leftIndex, indexKanan: rightIndex, array: data)
            }
        }
    }
    return data
}


// lakukan langkah kedua, hingga baris paling kiri
func bubbleSort(data: [Int]) -> [Int] {
    var dataArray = data
    for maxIndex in 0...data.count - 1 {
        if maxIndex > 1 {
            dataArray = doBubble(dataArray: dataArray, maxIndex: maxIndex)
        }
    }
    return dataArray
}



