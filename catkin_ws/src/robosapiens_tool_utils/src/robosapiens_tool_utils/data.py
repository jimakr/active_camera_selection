
from pathlib import Path
import cv2

import numpy as np



class Image():
   

    def __init__(self, data=None, dtype=np.uint8, guess_format=True):
        """
        Image constructor
        :param data: Data to be held by the image object
        :type data: numpy.ndarray
        :param dtype: type of the image data provided
        :type data: numpy.dtype
        :param guess_format: try to automatically guess the type of input data and convert it
        :type guess_format: bool
        """
        #super().__init__(data)

        self.dtype = dtype
        if data is not None:
            # Check if the image is in the correct format
            try:
                data = np.asarray(data)
            except Exception:
                raise ValueError("Image data not understood (cannot be cast to NumPy array).")

            if data.ndim != 3:
                raise ValueError("3-dimensional images are expected")
            if guess_format:
                # If channels are found last and image is a color one, assume OpenCV format
                if data.shape[2] == 3:
                    data = cv2.cvtColor(data, cv2.COLOR_BGR2RGB)
                    data = np.transpose(data, (2, 0, 1))
                # If channels are found last and image is not a color one, just perform transpose
                elif data.shape[2] < min(data.shape[0], data.shape[1]):
                    data = np.transpose(data, (2, 0, 1))
            self.data = data
        else:
            raise ValueError("Image is of type None")

    @property
    def data(self):
        """
        Getter of data. Image class returns a *dtype* NumPy array.
        :return: the actual data held by the object
        :rtype: A *dtype* NumPy array
        """
        if self._data is None:
            raise ValueError("Image is empty")

        return self._data

    @data.setter
    def data(self, data):
        """
        Setter for data.
        :param: data to be used for creating a vector
        """
        # Convert input data to a NumPy array
        data = np.asarray(data, dtype=self.dtype)

        # Check if the supplied vector is 3D, e.g. (width, height, channels)
        if len(data.shape) != 3:
            raise ValueError(
                "Only 3-D arrays are supported by Image. Please supply a data object that can be casted "
                "into a 3-D NumPy array.")

        self._data = data

    def numpy(self):
        """
        Returns a NumPy-compatible representation of data.
        :return: a NumPy-compatible representation of data
        :rtype: numpy.ndarray
        """
        # Since this class stores the data as NumPy arrays, we can directly return the data
        return self.data.copy()

    def __str__(self):
        """
        Returns a human-friendly string-based representation of the data.
        :return: a human-friendly string-based representation of the data
        :rtype: str
        """
        return str(self.data)

    @classmethod
    def open(cls, filename):
        """
        Create an Image from file and return it as RGB.
        :param cls: reference to the Image class
        :type cls: Image
        :param filename: path to the image file
        :type filename: str
        :return: image read from the specified file
        :rtype: Image
        """
        if not Path(filename).exists():
            raise FileNotFoundError('The image file does not exist.')
        data = cv2.imread(filename)
        # Change channel order and convert from HWC to CHW
        data = cv2.cvtColor(data, cv2.COLOR_BGR2RGB)
        data = np.transpose(data, (2, 0, 1))
        return cls(data)

    def opencv(self):
        """
        Returns the stored image into a format that can be directly used by OpenCV.
        This function is useful due to the discrepancy between the way images are stored:
        HWC/BGR (OpenCV) and CWH/RGB (PyTorch)
        :return: an image into OpenCV compliant-format
        :rtype: NumPy array
        """
        data = np.transpose(self.data, (1, 2, 0))
        data = cv2.cvtColor(data, cv2.COLOR_RGB2BGR)
        return data

    def convert(self, format='channels_first', channel_order='rgb'):
        """
        Returns the data in channels first/last format using either 'rgb' or 'bgr' ordering.
        :param format: either 'channels_first' or 'channels_last'
        :type format: str
        :param channel_order: either 'rgb' or 'bgr'
        :type channel_order: str
        :return an image (as NumPy array) with the appropriate format
        :rtype NumPy array
        """
        if format == 'channels_last':
            data = np.transpose(self.data, (1, 2, 0))
        elif format == 'channels_first':
            data = self.data.copy()
        else:
            raise ValueError("format not in ('channels_first', 'channels_last')")

        if channel_order == 'bgr':
            # This causes a second copy operation. Can be potentially further optimized in the future.
            data = cv2.cvtColor(data, cv2.COLOR_RGB2BGR)
        elif channel_order not in ('rgb', 'bgr'):
            raise ValueError("channel_order not in ('rgb', 'bgr')")

        return data


