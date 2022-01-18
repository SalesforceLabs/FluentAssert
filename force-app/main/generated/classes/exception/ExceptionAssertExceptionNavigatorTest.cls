/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ExceptionAssertExceptionNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ExceptionAssert expectedAssert = Assert.that(new UnexpectedException());
        ExceptionAssertExceptionNavigator navigator = new ExceptionAssertExceptionNavigator(null, expectedAssert);

        // When
        ExceptionAssert actualAssert     = navigator.andThen();
        ExceptionAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    /*
     * Navigators
     */
    @IsTest
    static void testCause() {
        // Given
        Exception cause = new TypeException();
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(cause), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.cause().isSame(cause);

        // Then
        Assert.that(actualNavigator).isNotSame(expectedNavigator);
    }
    
    @IsTest
    static void testRootCause() {
        // Given
        Exception rootCause = new TypeException();
        Exception cause     = new TypeException(rootCause);
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(cause), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.rootCause().isSame(rootCause);

        // Then
        Assert.that(actualNavigator).isNotSame(expectedNavigator);
    }
    
    @IsTest
    static void testMessage() {
        // Given
        String message = 'FluentAssert rocks!';
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(message), (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.message().isSame(message);

        // Then
        Assert.that(actualNavigator).isNotSame(expectedNavigator);
    }

    /*
     * Delegations
     */
    @IsTest
    static void testIsNull() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(null, (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        Exception e = new UnexpectedException();
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(e, (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isSame(e);

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isNotSame(new UnexpectedException());

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        Exception e = new UnexpectedException();
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(e, (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isEqualTo(e);

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isNotEqualTo(new UnexpectedException());

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testHasMessage() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException('FluentAssert rocks!'), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.hasMessage('FluentAssert rocks!');

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testHasCause() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(new TypeException()), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.hasCause();

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testHasNoCause() {
        // Given
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(new UnexpectedException(), (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.hasNoCause();

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsInSet() {
        // Given
        Exception e = new UnexpectedException();
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(e, (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{e});

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }

    @IsTest
    static void testIsInList() {
        // Given
        Exception e = new UnexpectedException();
        ExceptionAssertExceptionNavigator expectedNavigator = new ExceptionAssertExceptionNavigator(e, (ExceptionAssert) null);

        // When
        ExceptionAssertExceptionNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{e});

        // Then
        Assert.that(actualNavigator).isSame(expectedNavigator);
    }
}