//
//  ContentView.swift
//  CustomShapesExamples
//
//  Created by Madison Dellamea on 2022-11-17.
//

import SwiftUI

struct Diagonal: Shape {
    func path(in rect: CGRect) -> Path {
        
        // The path that describees shape!
        var path = Path()
        
        // Send back (return) the path that describes the shape.
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        return path
        
    }
    
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: 300, y: 150))
        path.addLine(to: CGPoint(x: 270, y: 180))
        
        path.move(to: CGPoint(x: 270, y: 180))
        path.addLine(to: CGPoint(x: 350, y: 300))
        
        path.move(to: CGPoint(x: 350, y: 300))
        path.addLine(to: CGPoint(x: 430, y: 180))
        
        path.move(to: CGPoint(x: 430, y: 180))
        path.addLine(to: CGPoint(x: 400, y: 150))
        
        path.move(to: CGPoint(x: 400, y: 150))
        path.addLine(to: CGPoint(x: 300, y: 150))
        // diamond structure
        path.move(to: CGPoint(x: 270, y: 180))
        path.addLine(to: CGPoint(x: 300, y: 190))
        
        path.move(to: CGPoint(x: 300, y: 190))
        path.addLine(to: CGPoint(x: 400, y: 190))
        
        path.move(to: CGPoint(x: 400, y: 190))
        path.addLine(to: CGPoint(x: 430, y: 180))
        // upper lines
        path.move(to: CGPoint(x: 300, y: 190))
        path.addLine(to: CGPoint(x: 320, y: 150))
        
        path.move(to: CGPoint(x: 320, y: 150))
        path.addLine(to: CGPoint(x: 270, y: 180))
        
        path.move(to: CGPoint(x: 300, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 150))
        
        path.move(to: CGPoint(x: 350, y: 150))
        path.addLine(to: CGPoint(x: 400, y: 190))
        
        path.move(to: CGPoint(x: 400, y: 190))
        path.addLine(to: CGPoint(x: 380, y: 150))
        
        path.move(to: CGPoint(x: 380, y: 150))
        path.addLine(to: CGPoint(x: 430, y: 180))
        
        path.move(to: CGPoint(x: 325, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 150))
        
        path.move(to: CGPoint(x: 375, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 150))
        // lower lines
        path.move(to: CGPoint(x: 300, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 300))
        
        path.move(to: CGPoint(x: 400, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 300))
        
        path.move(to: CGPoint(x: 325, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 300))
        
        path.move(to: CGPoint(x: 375, y: 190))
        path.addLine(to: CGPoint(x: 350, y: 300))
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        
        Diamond()
            .stroke()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
