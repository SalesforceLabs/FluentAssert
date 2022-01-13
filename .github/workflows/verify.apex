Fluent.Assert.that(true)
             .isTrue();

Fluent.Assert.that('Hello World!')
              .length()
                  .isLessThan(100)
              .back()
              .startsWith('Hello')
              .contains('World');

// Exceptions
Exception rootCause = new IllegalArgumentException('Root Cause Exception');
Exception cause     = new TypeException('Cause Exception', rootCause);
Exception e         = new UnexpectedException('FluentAssert Exception', cause);

Fluent.Assert.that(e)
             .message()
                .contains('FluentAssert')
             .back()
             .cause()
                .hasMessage('Cause Exception')
             .back()
             .rootCause()
                .hasNoCause()
                .isSame(rootCause);
