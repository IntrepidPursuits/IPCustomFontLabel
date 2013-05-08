#import "IPCustomFontLabel.h"
#import <QuartzCore/QuartzCore.h>

@interface IPCustomFontLabel ()
@property (copy, nonatomic) NSString *fontFamily;
@property (strong, nonatomic) UIColor *shadowColor;
@property (nonatomic) CGSize shadowOffset;
@end

@implementation IPCustomFontLabel

- (id)initWithFrame:(CGRect)frame font:(UIFont *)font
{
    self = [self initWithFrame:frame];
    if (self) {
        self.font = font;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    if (self.fontFamily && self.font) {
        CGFloat fontSize = self.font.pointSize;
        UIFont *font = [UIFont fontWithName:self.fontFamily size:fontSize];
        if (font) {
            self.font = font;
        } else {
#if DEBUG
            NSLog(@"Warning: Could not instantiate UIFont with family %@ for %@", self.fontFamily, [self description]);
#endif
        }
    }
    
    if (self.shadowColor) {
        self.layer.shadowColor  = [self.shadowColor CGColor];
    }
    
    if (!CGSizeEqualToSize(self.shadowOffset, CGSizeZero)) {
        self.layer.shadowOffset = self.shadowOffset;
    }
}

@end
