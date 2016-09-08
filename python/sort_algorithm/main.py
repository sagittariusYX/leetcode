import bubble_sort
import heap_sort
import insert_sort
import merge_sort
import quick_sort
import select_sort

import unittest

class sortTests(unittest.TestCase):
    _arr = [3, 5, 7, 1, 3, 9, 13, 8]
    _res = [1, 3, 3, 5, 7, 8, 9, 13]

    def test_bubble_sort(self):
        self.assertEqual(bubble_sort.bubble_sort(self._arr), self._res)

    def test_select_sort(self):
        self.assertEqual(select_sort.select_sort(self._arr), self._res)

    def test_insert_sort(self):
        self.assertEqual(insert_sort.insert_sort(self._arr), self._res)

    def test_merge_sort(self):
        self.assertEqual(merge_sort.merge_sort(self._arr), self._res)

    def test_quick_sort(self):
        self.assertEqual(quick_sort.quick_sort(self._arr), self._res)

    def test_heap_sort(self):
        self.assertEqual(heap_sort.heap_sort(self._arr), self._res)

if __name__ == "__main__":
    unittest.main()
