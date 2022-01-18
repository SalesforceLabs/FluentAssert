Fluent.Assert.that(true)
             .isTrue();

Fluent.Assert.that('Hello World!')
              .length()
                  .isLessThan(100)
              .andThen()
              .startsWith('Hello')
              .contains('World');

// Exceptions
Exception rootCause = new IllegalArgumentException('Root Cause Exception');
Exception cause     = new TypeException('Cause Exception', rootCause);
Exception e         = new UnexpectedException('FluentAssert Exception', cause);

Fluent.Assert.that(e)
             .message()
                .contains('FluentAssert')
             .andThen()
             .cause()
                .hasMessage('Cause Exception')
             .andThen()
             .rootCause()
                .hasNoCause()
                .isSame(rootCause);
