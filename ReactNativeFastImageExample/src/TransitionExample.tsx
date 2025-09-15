import React from 'react';
import {StyleSheet, View} from 'react-native';
import SectionFlex from './SectionFlex';
import FastImage from '@d11/react-native-fast-image';
import Section from './Section';
import FeatureText from './FeatureText';
import BulletText from './BulletText';
import {useCacheBust} from './useCacheBust';

const IMAGE_URL_NONE = 'https://unsplash.it/3000/3000?image=123';
const IMAGE_URL_FADE = 'https://unsplash.it/3000/3000?image=124';

const Col = (p: any) => <View style={styles.col} {...p} />;

export const TransitionExample = () => {
  const {query, bust} = useCacheBust('');
  return (
    <View>
      <Section>
        <FeatureText text="• transition." />
      </Section>
      <SectionFlex onPress={bust} style={styles.container}>
        <Col>
          <FastImage
            style={styles.image}
            transition={FastImage.transition.none}
            source={{uri: IMAGE_URL_NONE + query.replace('?', '&')}}
          />
          <BulletText>none (default)</BulletText>
        </Col>
        <Col>
          <FastImage
            style={styles.image}
            transition={FastImage.transition.fade}
            source={{uri: IMAGE_URL_FADE + query.replace('?', '&')}}
          />
          <BulletText>fade</BulletText>
        </Col>
      </SectionFlex>
    </View>
  );
};

const styles = StyleSheet.create({
  image: {
    height: 100,
    width: 200,
    backgroundColor: '#ddd',
    margin: 20,
    marginTop: 0,
    marginBottom: 10,
    flex: 0,
  },
  container: {
    padding: 20,
  },
  col: {
    alignItems: 'center',
  },
});
