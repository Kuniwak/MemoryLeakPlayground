#import "Weight2.h"


@implementation Weight2
- (id)init {
   if (self = [super init]) {
      size_t size10MiB = 10*1024*1024;
      void* mem = malloc(size10MiB);
      if (mem == NULL) {
         return self;
      }
      // NOTE: Avoid memory overcommit.
      memset(mem, size10MiB, 1);
      _mem = mem;
   }
   return self;
}

- (void)dealloc {
   if (_mem != NULL) {
      free(_mem);
   }
}
@end
