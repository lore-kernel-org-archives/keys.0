Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50658347BD4
	for <keys@linux.kernel.org>; Thu, 26 Mar 2026 19:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774554388; cv=none; b=V+sdcxyLDc20z6/1lLx6Wr7T18X7BBwBsWRpI9vLPPZfx0fj71Z8KidzqvSvVkQh3NrOBR1R2lGlBwUPnoqfMBIwJWl4WlPUmCWKuH7j5JNQg280OV0bDmXpYtNGBcho560EyJmvAKt63IVSgPRHqZUUgeGGv4dg5KXTQLefmmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774554388; c=relaxed/simple;
	bh=UvZqdTqnxoCpiviSNXVjcVQLtgCYV5wnB/t2wvqX6Yw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WH/3w4G00FjYkQdPgViGaA71H6I+XtKile6A7zMj02GIHc6zEz9fzhvHCgQxzQOgqOa0yW+A+r9UvarXwoTGHNV675ild5God28fOfu+QOpgwJzE1h5xVoeRpL97yruTtFKNlhCsV/D2j3ZdJsgMmTVGoMkSZFdP61XxM9AAnyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHHEQCd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHHEQCd6"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BC12C116C6;
	Thu, 26 Mar 2026 19:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774554387;
	bh=UvZqdTqnxoCpiviSNXVjcVQLtgCYV5wnB/t2wvqX6Yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HHHEQCd62bRtyRMmrFevaF1Q/pMtJg4+2BJODZdbhbnciTgiau/IkGHx3bN57zZFi
	 FFffxMWAyVWsgWN5U/1xcj039GUj3YR0OdiGYZFoN2gRxf80rcBRsBj9RKvVZeIiqF
	 XFmivaWTmYrl0KEhc6RBQrOzYvnYChFhzOcZUE5cWMLna3suLuwGa4O+Sx8uXb4R/g
	 eWXe7b2TEF18qcS6+wdjUVhaxxuoVuqoF/+PDi6bPViP3jTK/oh1bQEzHTj4VnpIWF
	 7bbmpjeek/wVFz/BCPix7IUsTlhG05GQT9mWHRbZNgSkt6NpaFBOZAiBqvrO/T8MPc
	 mautqyeO3Xz/A==
Date: Thu, 26 Mar 2026 15:46:26 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Replacement GPG key for Sasha Levin
Message-ID: <20260326-meaty-adaptable-gerbil-b1385b@lemur>
References: <acMxMeih6N9OVzCg@laps>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <acMxMeih6N9OVzCg@laps>

On Tue, Mar 24, 2026 at 08:49:53PM -0400, Sasha Levin wrote:
> Hi folks,
> 
> Please add my new ed25519 GPG key to the keyring, replacing my old RSA-4096 key
> (E27E5D8A3403A2EF66873BBCDEA66FF797772CDC). The new key is cross-signed by the
> old one.

Added.

Thanks,
-- 
KR
