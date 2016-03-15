
#define IMAGEVIEW_HEIGHT 300.0f

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
{
    NSArray *downloadedImages;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //fill this array with your downloadedimage
    downloadedImages = @[[UIImage imageNamed:@"img_bird"], [UIImage imageNamed:@"img_200x200"], [UIImage imageNamed:@"img_200x150"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    for(int idx = 1; idx <= 6; idx++)
    {
        UIImageView *imgV = [self.view viewWithTag:idx];
        imgV.image= downloadedImages [arc4random()%downloadedImages.count];
        [imgV setFrame:AVMakeRectWithAspectRatioInsideRect(imgV.image.size, imgV.frame)];
        CGFloat height = imgV.frame.size.height;
        
        switch (imgV.tag) {
            case 1:
               
                height1.constant = height;
                break;
            case 2:
                height2.constant = height;
                break;
            case 3:
                height3.constant = height;
                break;
            case 4:
                height4.constant = height;
                break;
            case 5:
                height5.constant = height;
                break;
            case 6:
                height6.constant = height;
                break;
     
            default:
                break;
        }
    
        [imgV layoutIfNeeded];
    }
}

@end
