Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A913746E
	for <keys@linux.kernel.org>; Mon, 24 Mar 2025 19:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742845649; cv=none; b=e60Nl5IORzcfenbarL4+U7DNUMVzAOJNg7+WLK4Frw9CXcqYgohAgVCUDwPDLJzDDOSCCtGjtzJPj9qMnnz6RYFgbfn3Q4U/yvcWlurbDFYvBP694vh+IJjr+FgbMEtLXGhu3MZVQDgSYrCboeIJiGvP0QHYwc/4vWT/Br1BENs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742845649; c=relaxed/simple;
	bh=IXj4U4PDksrWPaRRTu1VVt4YjEKlTdHW+TWtRmsJceQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q15CvFXiagGli4aR+hnr/l503DqvglEZ589CX1tRu+t018mUPmS4hqW5SOjx8Lwca3h5iT3ca9bi4JM6/fn8/25x3rQ8vOSW5sHIaDmZy0IMj7DW1cYz4yCJrZUlm4ltZ+APSpq+tFHbd9PnXJk48trVpf0m1UCdhhRixLeyDOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=sQ88xtqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="sQ88xtqv"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4A2DC4CEE4;
	Mon, 24 Mar 2025 19:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1742845649;
	bh=IXj4U4PDksrWPaRRTu1VVt4YjEKlTdHW+TWtRmsJceQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQ88xtqvrTJkxKR74bJFpIJvcoDIm6vY5LUlqeneRKe7+XhE+jk0PFQj1kWwiOamp
	 +/Tj3lvj4DplPX3BDYuhhLtsfzZDMmu350vK/+7uJrIMO3S2EJxAklXNXMDp1f3SJS
	 jGdGpRGe8ZpAz4a57e+PfovS9JpicD12B4k8VVck=
Date: Mon, 24 Mar 2025 15:47:27 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Keys using SHA-1 in the kernel keyring
Message-ID: <20250324-vegan-urban-gazelle-fdab4e@meerkat>
References: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>

On Fri, Feb 07, 2025 at 06:09:40PM +0100, Uwe Kleine-König wrote:
> Fixing is as easy as:
> 
>        sq key export --cert DE0E66E32F1FDD0902666B96E63EDCA9329DD07E |
>                 sq cert lint --fix --cert-file=- |
>                 sq cert import

For the record, it's not easy if your keys aren't all in ~/.gnupg. For
example, I have just subkeys in ~/.gnupg, and my C key is on detachable
storage that I mount only when I really need it. Unfortunately, `sq` ignores
$GNUPGHOME, and passing `--keyring /mnt/keys/gnupg` doesn't appear to do the
right thing.

I've poked at it for a bit, but as I'm unable to make it work, I'm backing off
for now. I'll start conversation on the gnupg list about ways to do the same
fixes as `sq` does to rebind UIDs and subkeys with a stronger hash, but I'm
not sure doing it with a combination of sq and gnupg is going to do the right
thing.

-K
