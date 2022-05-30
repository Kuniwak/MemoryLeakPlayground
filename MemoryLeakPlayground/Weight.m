#import "Weight.h"


@implementation Weight
- (id)init {
   if (self = [super init]) {
      size_t size1MiB = 1024*1024;
      void* mem = malloc(size1MiB);
      if (mem == NULL) {
         return self;
      }
      // NOTE: Avoid memory overcommit.
      memset(mem, size1MiB, 1);
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
