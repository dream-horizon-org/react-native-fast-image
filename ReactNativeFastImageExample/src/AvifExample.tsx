import FastImage from '@d11/react-native-fast-image';
import React from 'react';
import {StyleSheet, View} from 'react-native';
import FeatureText from './FeatureText';
import Section from './Section';
import SectionFlex from './SectionFlex';
import {useCacheBust} from './useCacheBust';

const TRANSPARENT_AVIF_URL = 'https://raw.githubusercontent.com/ds-horizon/react-native-fast-image/248b099e54a382f58c2549796cf17ee2bd0e369a/ReactNativeFastImageExampleServer/pictures/shade.avif';

const ANIMATED_AVIF_URL = 'https://raw.githubusercontent.com/ds-horizon/react-native-fast-image/d1b67604d520c585025bac257a2c815fd676a2c6/ReactNativeFastImageExampleServer/pictures/animated.avif';

export const AvifExample = () => {
  const {url: transparentUrl, bust: bustTransparentUrl} =
    useCacheBust(TRANSPARENT_AVIF_URL);
  const {url: animatedUrl, bust: bustAnimatedUrl} =
    useCacheBust(ANIMATED_AVIF_URL);

  return (
    <>
      <View>
        <Section>
          <FeatureText text="• Remote AVIF with transparent background." />
        </Section>
        <SectionFlex onPress={bustTransparentUrl}>
          <FastImage style={styles.image} source={{uri: transparentUrl}} />
        </SectionFlex>
      </View>
      <View>
        <Section>
          <FeatureText text="• Remote Animated AVIF (iOS)" />
        </Section>
        <SectionFlex onPress={bustAnimatedUrl}>
          <FastImage style={styles.image} source={{uri: animatedUrl}} />
        </SectionFlex>
      </View>
    </>
  );
};

const styles = StyleSheet.create({
  image: {
    backgroundColor: '#ccc',
    margin: 20,
    height: 100,
    width: 100,
  },
});
