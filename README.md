ObjRuntime_Swizling
===================

Method swizzling is a known technique in objective-c runtime to replace or extend methods in classes that you don’t own (including iOS\OSX libraries).  In essence, it modifies the mapping from method names to a method implementation as appears above.   If you search for method swizzling on the web, you will find a lot of articles telling you that this technique is dangerous. My take is that method swizzling, like a lot of other programming techniques,  can be risky or harmful if you don’t understand exactly what you are doing, but otherwise, it can be very useful. My advice is to be careful and understand what and how you swizzle.
