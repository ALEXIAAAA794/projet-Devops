import test from "node:test";
import assert from "node:assert/strict";
import { add, multiply, divide } from "../src/math.js";
test('add returns the sum of two numbers', () => {
  assert.equal(add(2, 3), 5);
});

test('multiply returns the product of two numbers', () => {
  assert.equal(multiply(3, 4), 12);
});

test('divide throws on division by zero', () => {
  assert.throws(() => divide(1, 0), /Division by zero/);
});