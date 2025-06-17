Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CD7294A15
	for <keys@linux.kernel.org>; Tue, 17 Jun 2025 22:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750200115; cv=none; b=Z5MuGEPRyMoby+OKMR9B8P13L2ESsGzJj0Xq9R4wReKTSLY/LUQ0sN6SpWKEb/x18m9vck+IjFQIgotGCZ085HTjL3u0MFVJHAramovyLbPPKd0NW2fdW/MCY0Q+eZF6DB1CTxlXj0irRTmTdeRsQjZD7D5RbFqzK9j/qWka0hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750200115; c=relaxed/simple;
	bh=xK57DqQKEMmKAQwjpwbz9npi43jnZBJy9kmCWZotQ/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nySppAr5xDljk1GzjDlUrOqFqIk4IdY3MVIfKUb/uws8Z+fwit3jE1Mf3xikDvEEsempB9IM/1PVd6oik/wTtLh0Nb+GMupzZfzdZ+kdzCEaeFR6e1KZHC8Vkt8nuECbIRSXGo3+lM9XC9Ko5FyQSm/wTdfd++YDkYW+qqX1ztU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii3vE9po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii3vE9po"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC46C4CEE3;
	Tue, 17 Jun 2025 22:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750200115;
	bh=xK57DqQKEMmKAQwjpwbz9npi43jnZBJy9kmCWZotQ/g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ii3vE9poEdZM5LqrmgHMzl0IOuncMNw7TlMWzXT9TI5kekCysNJrnFr8bw56unAht
	 HUnsd2XDu/Wf4HjVUjSdkNc1mlL5sGEtfj8BcMcbxjrvvKT4rJVSSHdH2UsIQjqkda
	 +3BEAGMc0msxBY/Adc+sQ1HfpqQukLYUl+4KR9lMs++n7lp39USB5L+OW0U8E+CbdU
	 Z6pSNJ3VMtWVRtiuvQw1K7KFzEm6yQazZSTV2+WByJybuhVVGwZ0pOjCAAz0RUruez
	 JkC/z23YHh+TAeM9gcbbavA2rkSo/TMS6nxP/wEPHaMI/8bqoE0Hix+yZkZf+z9yt9
	 uODTtid2pmQiA==
Message-ID: <44898d39-ca32-48e4-a7eb-8f572c12c488@kernel.org>
Date: Tue, 17 Jun 2025 15:41:54 -0700
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Vineet Gupta <vgupta@kernel.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>, keys@linux.kernel.org
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
 <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
 <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
From: Vineet Gupta <vgupta@kernel.org>
Content-Language: en-US
In-Reply-To: <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Uwe,

On 6/16/25 01:46, Uwe Kleine-König wrote:
>>>>>>> Before creating your next UID is suggest you read
>>>>>>> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
>>>>>> Thx for the pointer. It makes sense.
>>>>>> Shall I remove them from existing key and send it over again (I see it hasn't
>>>>>> been pushed yet to the repo)
>>>>> Yes, if you want to do that, I will hold off on processing this request.
>>>> Thx, here you go !
>>>>
>>>> pub   rsa4096 2013-02-16 [SC] [expires: 2029-12-08]
>>>>       397A6E0AE47A85E76B74B08969D7F1DDE28AC25E
>>>> uid           [ultimate] Vineet Gupta <vgupta@kernel.org>
>>>> uid           [ultimate] Vineet Gupta <vineet.gupta@linux.dev>
>>>> uid           [ultimate] Vineet Gupta <vineetg76@gmail.com>
>>>> uid           [ultimate] [jpeg image of size 24452]
>>> That looks better now. The scripts used to maintain the kernel keyring
>>> will accept that key update, however your new primary UID has no
>>> 3rd-party signatures. And also note that the signatures on your older
>>> UIDs are all done using SHA-1 so they will be discarded on reimport. In
>>> sum there is no valid trust path from Linus to your key.
>>>
>>> It would be great if you could get a few fresh signatures on your
>>> kernel.org UID. The guys who signed your other UIDs earlier might be
>>> good candidates to sign that without the need to arrange a meeting in
>>> real live.
>> Sure thing. I was thinking of asking a couple of my current colleagues (Bjorn,
>> Alex) to do that instead. As long as signers are in the web of trust it should
>> be fine ?
> From the POV of the kernel pgpkeys repo yes, signatures from people
> within the keyring are preferable. Still better from those who are
> "near" Linus. The graphs generated in the pgpkeys repo only consider
> paths of length four, so ideally let it sign by someone with distance <=
> 3. Not knowing which Bjorn and wich Alex you mean, see e.g.
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/E2DCDD9132669BD6.svg,
> my key has depth 3 as there is a path of length 3 (John Hawley -> Ben
> Hutchings -> me) and no shorter.

I've reached out to the folks who originally signed (but that was circa 2011)
and also to my existing Colleagues
Alexandre Ghiti
Bjorn Topel

both seasoned contributors.

>>> Also your key is affected by SHA-1 self signatures on the older UIDs.
>>> The respective output of `sq cert lint` is:
>>>
>>> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) <vgupta@synopsys.com>) protected by SHA-1
>>> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (official) <vineet.gupta1@synopsys.com>) protected by SHA-1
>>> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (personal) <vineetg76@gmail.com>) protected by SHA-1
>>>
>>>
>>> See
>>> https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=69D7F1DDE28AC25E
>>> for some details. Also
>>> https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/
>>> might be good to understand.
>> I tried to fix the sha-1 concern, but ran into some issues.
>>
>> First up I presume this is all pgp2 as I have that alias in my bashrc from an
>> early/old users.kernel.org recommendation.
> Not sure what you mean by "pgp2". My links above assume that you use gpg
> 2.2 or 2.4 which today is usually installed as "gpg" in your PATH.

Sorry I keep mixing GPG with PGP.
gpg 2 is default now, way back when they were transitioning from 1 to 2 and
preferred 2.

> I'm not entirely sure that the indicated command (i.e.
>
> 	gpg --force-sign-key --quick-sign-key 397A6E0AE47A85E76B74B08969D7F1DDE28AC25E "Vineet Gupta (alias) <vgupta@synopsys.com>" "Vineet Gupta (official) <vineet.gupta1@synopsys.com>" "Vineet Gupta (personal) <vineetg76@gmail.com>";
>
> ) also works for self-signatures. The test is:
>
> 	$ sq cert lint --cert=69D7F1DDE28AC25E
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) <vgupta@synopsys.com>) protected by SHA-1
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (official) <vineet.gupta1@synopsys.com>) protected by SHA-1
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (personal) <vineetg76@gmail.com>) protected by SHA-1
> 	Examined 1 certificate.
> 	  0 certificates are invalid and were not linted. (GOOD)
> 	  1 certificate was linted.
> 	  1 of the 1 certificates (100%) has at least one issue. (BAD)
> 	0 of the linted certificates were revoked.
> 	  0 of the 0 certificates has revocation certificates that are weaker than the certificate and should be recreated. (GOOD)
> 	0 of the linted certificates were expired.
> 	1 of the non-revoked linted certificate has at least one non-revoked User ID:
> 	  1 has at least one User ID protected by SHA-1. (BAD)
> 	  0 have all User IDs protected by SHA-1. (GOOD)
> 	0 of the non-revoked linted certificates have at least one non-revoked, live subkey:
> 	  0 have at least one non-revoked, live subkey with a binding signature that uses SHA-1. (GOOD)
> 	0 of the non-revoked linted certificates have at least one non-revoked, live, signing-capable subkey:
> 	  0 certificates have at least one non-revoked, live, signing-capable subkey with a strong binding signature, but a backsig that uses SHA-1. (GOOD)
>
> 	  Error: 1 certificate have at least one issue
>
> If the above command doesn't work, `sq cert lint --fix
> --cert=69D7F1DDE28AC25E` should do the trick for sure.

Im on Ubuntu 24.04 and upon apt install sq, the only ommands supported are
import and export, lint doesn't.
However I was able to uses pgp - although I was able to elide the sha-1 issue
due to a different reason.

>> Per your link [1] above I was able to refetch the keys of others, force sign
>> them and --send-key
>> However my refetched key brought back the locally deleted old UIDs: was it
>> because I had not uploaded it to Ubuntu key server, and MIT server where I did,
>> is no longer functional / used ?
> No, the "problem" is that keyservers don't forget. So you need to revoke
> the UIDs if you really want to get rid of them. It's a feature that you
> got it back. If I fetch your key after you added the UIDs I want the new
> UIDs just added to your key. That's what happend for you, too, as there
> is no way to distinguish between "the fetcher doesn't know the new UIDs
> yet" and "oopsie, the fetcher thought these UIDs are wrong and deleted
> them".

Makes total sense.

>> Anyhow do the older/deleted UIDs need to be sha-1 fixed  and then re-deleted and
>> --send-key to ubuntu key server?
> When you re-sign a UID, the old signature doesn't go away, it is just
> not considered any more as there is a newer one.

Right. So instead of fixing the sha-1 deficiency, I ended up just revoking the
aforementioned UIDs - at least 2 of them had stale addresses.


>> Or is there a different order of things to do - apologies for these noob questions.
> No problem. I bet you're not the only one who will have such questions
> while fixing their keys.
>
> Also I don't understand all the things about your key yet either.

:-)

Thx for your patience in explaining this.

Once I have the new UID signed I'll follow up on keys@.

Thx,
-Vineet
