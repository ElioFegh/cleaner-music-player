@import Foundation;

//declaring the class we need 
@interface MPRouteLabel

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

-(void) didMoveToWindow;

@end

%hook MPRouteLabel

-(void)didMoveToWindow{

	%orig;
	self.hidden = YES; //hiding the speaker name/label
}

%end
