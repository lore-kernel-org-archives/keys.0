Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040033FE66C
	for <keys@linux.kernel.org>; Wed, 25 Mar 2026 17:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774459411; cv=none; b=N1DPqOTKVuLyMZtCtCyXGPQ6LVru/P5jvkiyBuCveGcM8nPgaM/K2riQx85daWbCBqj/FzBz3gKrNTDQDp4nRkgTq2MA/ZKsJsFMBXXba6qgdqnnGiwzFQoZ8ZyBhmrvDt1cV1bBt0OyuDvc1MHK7COxowSMZUl3ZU8/MZ7JLPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774459411; c=relaxed/simple;
	bh=cA40Ibrjm2/4OQg9eNnw9X7X1Re6EuXgFxebipQ7Ie8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJDqI3Ia3OYEpmtQ5t/ABNGTCpfaXQ+YIH3I6RYf/HKa/XgxC3cPYUOTYpRgEGdfSUv9JQSxvYfWISkaDGizgApSUsWz6ehY8SZzpxIomDyJNPWTp5dMrcEJSrLV9nKelqUD++L7GcNNzc1bDctbkvpYlSSvxlx+dVVy1cLdF78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZrNyvEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZrNyvEx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 135C1C4CEF7;
	Wed, 25 Mar 2026 17:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774459410;
	bh=cA40Ibrjm2/4OQg9eNnw9X7X1Re6EuXgFxebipQ7Ie8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QZrNyvExGbJ034weIvYXOV9vSNZoyTuV3xY67kk8zXHDe0iNYjQCCEwanNVsr6Y/H
	 a1AQvFG1CPZAsLo5Hrc3C6xRlUpRstWiMbVtfd8Hmyd5XW0GRpo3aqQsB906XyM9u4
	 hfmUspBNdRawEg9hLXJ4XaNibJVKJYiWzl2F6Tzv/oCUDhRZLK5PbE1rEEtVzsQZ3l
	 YriWhl6ekDCdnRNXTlQxMjxlSUWq01d0QQyUt/EwsZ9FnFlQz4fO0CXBp5Bl9k4JZL
	 kDxzhSPbQvNX0TeS42iwoaKSqYrCK2ZMe8JPH4uyomcpQirsLgemCDbj62tpGyzdUT
	 ioRB6cZ3egKnw==
Date: Wed, 25 Mar 2026 13:23:28 -0400
From: Sasha Levin <sashal@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Replacement GPG key for Sasha Levin
Message-ID: <acQaELvVL7aF5Oc_@laps>
References: <acMxMeih6N9OVzCg@laps>
 <acN9F9hCGUliPkQh@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <acN9F9hCGUliPkQh@monoceros>

On Wed, Mar 25, 2026 at 07:28:40AM +0100, Uwe Kleine-König wrote:
>Hello Sasha,
>
>On Tue, Mar 24, 2026 at 08:49:53PM -0400, Sasha Levin wrote:
>> Please add my new ed25519 GPG key to the keyring, replacing my old RSA-4096 key
>> (E27E5D8A3403A2EF66873BBCDEA66FF797772CDC).
>
>In contrast to the old certificate the new one makes `sq cert lint`
>happy, so that's a good step. (The old one resulted in
>	Certificate DEA66FF797772CDC contains a User ID (Sasha Levin <alexander.levin@verizon.com>) protected by SHA-1
>	Certificate DEA66FF797772CDC contains a User ID (Sasha Levin <sasha.levin@oracle.com>) protected by SHA-1
>	Certificate DEA66FF797772CDC, key D0065D755EB09DBB uses a SHA-1-protected binding signature.
>.)
>
>> The new key is cross-signed by the old one.
>
>The old cert only has a single trust path (see
>https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/DEA66FF797772CDC.svg),
>as the new cert is only signed by the old, it also only has a single path
>through the old one. It would be great to improve that, still because
>that single path goes away when the old cert is removed.

Ugh... I thought I had a few more signatures there.

Thanks for pointing it out. Looks like I need to ask a few folks for signatures
during LPC/LSF :)

-- 
Thanks,
Sasha
