//
//  CreditsViewController.swift
//  Panello
//
//  Created by Andrew Roberts on 4/16/17.
//  Copyright © 2017 Andrew Roberts. All rights reserved.
//

import GLKit

class CreditsViewController: GLKViewController {
    
    // --------------------------------------------------------------------
    // MARK: - Instance data
    // --------------------------------------------------------------------
    
    // --------------------------------------------------------------------
    // MARK: - Child ViewControllers
    // --------------------------------------------------------------------
    
    // --------------------------------------------------------------------
    // MARK: - GLKViewController overrides
    // --------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.isNavigationBarHidden = true;
        self.preferredFramesPerSecond = 60
        
        let context = EAGLContext(api: .openGLES2)
        creditsView.context = context!
        EAGLContext.setCurrent(context)
        glEnable(GLenum(GL_BLEND))
        glBlendFunc(GLenum(GL_SRC_ALPHA), GLenum(GL_ONE_MINUS_SRC_ALPHA))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private var creditsView: GLKView {
        return view as! GLKView
    }
    
    // --------------------------------------------------------------------
    // MARK: - CreditsViewController methods
    // --------------------------------------------------------------------
    
}
