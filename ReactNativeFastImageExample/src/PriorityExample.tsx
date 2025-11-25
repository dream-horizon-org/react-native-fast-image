import React from 'react';
import { PixelRatio, StyleSheet, View } from 'react-native';
import FastImage from '@d11/react-native-fast-image';
import Section from './Section';
import SectionFlex from './SectionFlex';
import FeatureText from './FeatureText';
import { useCacheBust } from './useCacheBust';

const getImageUrl = (id: string, width: number, height: number) =>
  `https://unsplash.it/${width}/${height}?image=${id}`;
const IMAGE_SIZE = 1024;
const IMAGE_SIZE_PX = PixelRatio.getPixelSizeForLayoutSize(IMAGE_SIZE);
const IMAGE_URLS = [
  getImageUrl('0', IMAGE_SIZE_PX, IMAGE_SIZE_PX),
  getImageUrl('1', IMAGE_SIZE_PX, IMAGE_SIZE_PX),
  getImageUrl('2', IMAGE_SIZE_PX, IMAGE_SIZE_PX),
];

export const PriorityExample = () => {
  const { query, bust } = useCacheBust('');
  return (
    <View>
      <Section>
        <FeatureText text="• Prioritize images (low, normal, high)." />
      </Section>
      <SectionFlex onPress={bust}>
        <FastImage
          style={styles.image}
          source={require('./images/logo.png')}
          defaultSource={require('./images/logo.png')}
        />
        <FastImage
          style={styles.image}
          source={{
            uri: IMAGE_URLS[1] + query.replace('?', '&'),
            priority: FastImage.priority.normal,
          }}
        />
        <FastImage
          style={styles.image}
          source={{
            uri: IMAGE_URLS[2] + query.replace('?', '&'),
            priority: FastImage.priority.high,
          }}
        />
      </SectionFlex>
    </View>
  );
};

const styles = StyleSheet.create({
  image: {
    flex: 1,
    height: 100,
    backgroundColor: '#ddd',
    margin: 10,
    marginVertical: 20,
  },
});
