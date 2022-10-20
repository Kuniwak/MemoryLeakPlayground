#import "Weight2.h"


@implementation Weight2
- (id)init {
   if (self = [super init]) {
      size_t size8MiB = 8*1024*1024;
      void* mem = malloc(size8MiB);
      if (mem == NULL) {
         return self;
      }
      // NOTE: Avoid memory overcommit.
      memset(mem, size8MiB, 1);
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
