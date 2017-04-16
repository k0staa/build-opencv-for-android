# 
# Copyright (c) 2016 Tzutalin
# Create by TzuTaLin <tzu.ta.lin@gmail.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### path setup

###Changed particular version of library that is used. 

OPENCV_VERSION=10787c68d0cd9df16cca1a56bfe19287cabf847f
OPENCV_CONTRIB_VERSION=23c02563e40e69ef2f549a97e5c1c9ad3af2328b
if [ ! -z "$1" ]
  then
    OPENCV_VERSION="$1"
fi

echo "Opnecv revision ${OPENCV_VERSION}"

SCRIPT=$(readlink -f $0)
WD=`dirname $SCRIPT`

cd "${WD}"
if [ ! -d "${WD}/opencv" ]; then
    echo 'Cloning opencv'
    git clone https://github.com/opencv/opencv.git
fi
cd opencv
git checkout "${OPENCV_VERSION}" 

cd "${WD}"
if [ ! -d "${WD}/opencv_contrib" ]; then
    echo 'Cloning opencv_contrib'
    git clone https://github.com/opencv/opencv_contrib.git
fi
cd opencv_contrib
git checkout "${OPENCV_CONTRIB_VERSION}"

cd "${WD}"
