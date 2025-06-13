Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B892E11AE
	for <keys@linux.kernel.org>; Fri, 13 Jun 2025 18:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749838176; cv=none; b=dJQxaYIQrMJp50hUck8OgBGka+id0AQMoz0qnEvobkq+mhgQP313aLtTKzeeiUVWV24CLejdPb7YkQVXOLmwV5zfzuWYdCS8hkHUG8MalGTmHoHSHbRX4BE6eQUobqBnxQ4OggUyGwDCp1To9kU+978UaircrWkAjPruT/n98Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749838176; c=relaxed/simple;
	bh=aNkKrWgRBnaV3IlxpmCdp3vlXmB1Dm5JLLZvYzQqPXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZJkIdVBdGM2i34QcEECK4fwnqCxm/85Pkh1Wzmr9ckpH5LoHYXS5LPIOn4KPQTR5lsWnAF5buPOrqGfPuW7TcDvjTuC4MD2hPq3NPWkBNQ9oWxXY6G0OCN9U0WA6h53qpswfaNmS3KY1szVeBK1b6Wz1Z4oWhkgMdkzYyV1v4a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=h+Xxobm5; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="h+Xxobm5"
Message-ID: <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1749838170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sRPil8N+nDF8SYjAvQLdgdKqAwBIRLlZQ3nMpzaPRVw=;
	b=h+Xxobm5Z9+a1H8cpgXPBt7TkIQbaW/ZMaMGTgAjF9u2dj2Pg7J9DF+ts8/2IhnToyajQz
	af6KbeKju0Gp8c0L0GJMIzPoTXA1ux0toteiTgULgv8TaCDZYH/4ge5gzvJzZ5RXXoLkMV
	mOnasDcWjC+1BKZ5qHGwsxNmGLuN7Es=
Date: Fri, 13 Jun 2025 11:09:26 -0700
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Vineet Gupta <vgupta@kernel.org>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 keys@linux.kernel.org
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Vineet Gupta <vineet.gupta@linux.dev>
In-Reply-To: <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Hi Uwe,

On 6/13/25 02:49, Uwe Kleine-König wrote:
> hello Vineet,
>
> On Thu, Jun 12, 2025 at 02:52:52PM -0700, Vineet Gupta wrote:
>>
>> On 6/12/25 14:08, Konstantin Ryabitsev wrote:
>>> On Thu, 12 Jun 2025 at 16:59, Vineet Gupta <vgupta@kernel.org> wrote:
>>>>> Before creating your next UID is suggest you read
>>>>> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
>>>> Thx for the pointer. It makes sense.
>>>> Shall I remove them from existing key and send it over again (I see it hasn't
>>>> been pushed yet to the repo)
>>> Yes, if you want to do that, I will hold off on processing this request.
>> Thx, here you go !
>>
>> pub   rsa4096 2013-02-16 [SC] [expires: 2029-12-08]
>>       397A6E0AE47A85E76B74B08969D7F1DDE28AC25E
>> uid           [ultimate] Vineet Gupta <vgupta@kernel.org>
>> uid           [ultimate] Vineet Gupta <vineet.gupta@linux.dev>
>> uid           [ultimate] Vineet Gupta <vineetg76@gmail.com>
>> uid           [ultimate] [jpeg image of size 24452]
> That looks better now. The scripts used to maintain the kernel keyring
> will accept that key update, however your new primary UID has no
> 3rd-party signatures. And also note that the signatures on your older
> UIDs are all done using SHA-1 so they will be discarded on reimport. In
> sum there is no valid trust path from Linus to your key.
>
> It would be great if you could get a few fresh signatures on your
> kernel.org UID. The guys who signed your other UIDs earlier might be
> good candidates to sign that without the need to arrange a meeting in
> real live.

Sure thing. I was thinking of asking a couple of my current colleagues (Bjorn,
Alex) to do that instead. As long as signers are in the web of trust it should
be fine ?

> Also your key is affected by SHA-1 self signatures on the older UIDs.
> The respective output of `sq cert lint` is:
>
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) <vgupta@synopsys.com>) protected by SHA-1
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (official) <vineet.gupta1@synopsys.com>) protected by SHA-1
> 	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (personal) <vineetg76@gmail.com>) protected by SHA-1
>
>
> See
> https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=69D7F1DDE28AC25E
> for some details. Also
> https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/
> might be good to understand.

I tried to fix the sha-1 concern, but ran into some issues.

First up I presume this is all pgp2 as I have that alias in my bashrc from an
early/old users.kernel.org recommendation.

Per your link [1] above I was able to refetch the keys of others, force sign
them and --send-key
However my refetched key brought back the locally deleted old UIDs: was it
because I had not uploaded it to Ubuntu key server, and MIT server where I did,
is no longer functional / used ?
Anyhow do the older/deleted UIDs need to be sha-1 fixed  and then re-deleted and
--send-key to ubuntu key server?
Or is there a different order of things to do - apologies for these noob questions.

Thx,
-Vineet



