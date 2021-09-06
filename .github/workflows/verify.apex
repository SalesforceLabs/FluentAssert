Assert.that(true)
              .isTrue();

Assert.that('Hello World!')
              .length()
                  .isLessThan(100)
              .back()
              .startsWith('Hello')
              .contains('World');